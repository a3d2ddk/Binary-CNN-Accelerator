import argparse
import logging
import time
from datetime import datetime
from pathlib import Path

import torch
import torch.backends.cudnn as cudnn
import torch.nn as nn
import torch.optim
import torch.utils.data
import torchinfo

from data import get_dataset
from models import vgg_cifar10_binary, our_net_binary
from preprocess import get_transform
from utils import AverageMeter, ResultsLog, accuracy, adjust_optimizer, save_checkpoint, setup_logging

parser = argparse.ArgumentParser(description="Binarized VGG Training on CIFAR")

parser.add_argument("--results_dir", metavar="RESULTS_DIR", default="./results",
                    help="root directory for all run outputs")
parser.add_argument("--save", metavar="SAVE", default="",
                    help="sub-folder name for this run (defaults to timestamp)")
parser.add_argument("--dataset", metavar="DATASET", default="cifar10",
                    choices=["cifar10", "cifar100"],
                    help="dataset to train on: cifar10 | cifar100 (default: cifar10)")
parser.add_argument("--type", default="torch.cuda.FloatTensor",
                    help="tensor type — e.g. torch.cuda.FloatTensor or torch.FloatTensor")
parser.add_argument("--gpus", type=str, default="0",
                    help="comma-separated GPU indices to use (e.g. 0,1,3)")
parser.add_argument("-j", "--workers", default=8, type=int, metavar="N",
                    help="number of data-loading workers (default: 8)")
parser.add_argument("--epochs", default=160, type=int, metavar="N",
                    help="total number of epochs to run (default: 160)")
parser.add_argument("-b", "--batch-size", default=256, type=int, metavar="N",
                    help="mini-batch size (default: 256)")
parser.add_argument("--print-freq", "-p", default=10, type=int, metavar="N",
                    help="log every N batches (default: 10)")
parser.add_argument("--resume", default="", type=str, metavar="PATH",
                    help="path to a checkpoint file or directory to resume from")
parser.add_argument("-e", "--evaluate", type=str, metavar="FILE",
                    help="evaluate checkpoint FILE on the validation set and exit")
parser.add_argument("--summary", action="store_true",
                    help="print a summary of the model")

# Number of output classes per dataset
_DATASET_NUM_CLASSES: dict[str, int] = {
    "cifar10":  10,
    "cifar100": 100,
}


def main() -> None:
    global args, best_prec1
    best_prec1 = 0
    args = parser.parse_args()

    if args.evaluate:
        args.results_dir = "/tmp"
    if args.save == "":
        args.save = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")

    save_path = Path(args.results_dir) / args.save
    save_path.mkdir(parents=True, exist_ok=True)

    setup_logging(save_path / "log.txt")
    results_file = save_path / "results.{}"
    results = ResultsLog(str(results_file).format("csv"), str(results_file).format("html"))

    logging.info(f"saving to {save_path}")
    logging.debug(f"run arguments: {args}")

    if "cuda" in args.type:
        args.gpus = [int(i) for i in args.gpus.split(",")]
        torch.cuda.set_device(args.gpus[0])
        cudnn.benchmark = True
    else:
        args.gpus = None

    # Resolve number of output classes
    num_classes = _DATASET_NUM_CLASSES[args.dataset]
    start_epoch = 0

    # Create model
    # logging.info(f"creating VGG_Cifar10 model for {args.dataset} ({num_classes} classes)")
    # model = vgg_cifar10_binary(num_classes=num_classes)
    logging.info(f"creating custom model for {args.dataset} ({num_classes} classes)")
    model = our_net_binary(num_classes=num_classes)
    logging.info(f"number of parameters: {sum(p.nelement() for p in model.parameters())}")
    if args.summary:
        torchinfo.summary(model, input_size=(1, 3, 32, 32))
        return

    # Wrap in DataParallel once, before any forward passes
    if args.gpus and len(args.gpus) > 1:
        model = torch.nn.DataParallel(model, args.gpus)

    # Optionally resume from a checkpoint
    if args.evaluate:
        if not Path(args.evaluate).is_file():
            parser.error(f"invalid checkpoint: {args.evaluate}")
        checkpoint = torch.load(args.evaluate)
        model.load_state_dict(checkpoint["state_dict"])
        logging.info(f"loaded checkpoint '{args.evaluate}' (epoch {checkpoint['epoch']})")
    elif args.resume:
        checkpoint_file = Path(args.resume)
        if checkpoint_file.is_dir():
            results.load(str(checkpoint_file / "results.csv"))
            checkpoint_file = checkpoint_file / "model_best.pth.tar"
        if checkpoint_file.is_file():
            logging.info(f"loading checkpoint '{args.resume}'")
            checkpoint = torch.load(checkpoint_file)
            start_epoch = checkpoint["epoch"] - 1
            best_prec1 = checkpoint["best_prec1"]
            model.load_state_dict(checkpoint["state_dict"])
            logging.info(f"loaded checkpoint '{checkpoint_file}' (epoch {checkpoint['epoch']})")
        else:
            logging.error(f"no checkpoint found at '{args.resume}'")

    # Transforms — CIFAR default: 32×32 input
    transform = {
        "train": get_transform(args.dataset, augment=True),
        "eval":  get_transform(args.dataset, augment=False),
    }

    # The model's built-in regime drives the optimizer schedule.
    # Unwrap DataParallel if needed to access the attribute directly.
    base_model = model.module if isinstance(model, torch.nn.DataParallel) else model
    regime = base_model.regime

    # Loss and dtype
    criterion: nn.Module = nn.CrossEntropyLoss()
    criterion.type(args.type)
    model.type(args.type)

    val_data = get_dataset(args.dataset, "val", transform["eval"])
    val_loader = torch.utils.data.DataLoader(
        val_data, batch_size=args.batch_size, shuffle=False,
        num_workers=args.workers, pin_memory=True,
    )

    if args.evaluate:
        validate(val_loader, model, criterion, 0)
        return

    train_data = get_dataset(args.dataset, "train", transform["train"])
    train_loader = torch.utils.data.DataLoader(
        train_data, batch_size=args.batch_size, shuffle=True,
        num_workers=args.workers, pin_memory=True,
    )

    # Initialise optimizer — adjust_optimizer will fully configure it on epoch 0
    # using the model's built-in regime (Adam with betas=(0.9, 0.999), lr=5e-3).
    optimizer = torch.optim.Adam(model.parameters())
    logging.info(f"training regime: {regime}")

    for epoch in range(start_epoch, args.epochs):
        optimizer = adjust_optimizer(optimizer, epoch, regime)

        train_loss, train_prec1, train_prec5 = train(train_loader, model, criterion, epoch, optimizer)
        val_loss, val_prec1, val_prec5 = validate(val_loader, model, criterion, epoch)

        is_best = val_prec1 > best_prec1
        best_prec1 = max(val_prec1, best_prec1)

        save_checkpoint(
            {
                "epoch": epoch + 1,
                "model": "vgg_cifar10_binary",
                "state_dict": model.state_dict(),
                "best_prec1": best_prec1,
                "regime": regime,
            },
            is_best,
            path=save_path,
        )

        logging.info(
            f"\n Epoch: {epoch + 1}\t"
            f"Training Loss {train_loss:.4f} \t"
            f"Training Prec@1 {train_prec1:.3f} \t"
            f"Training Prec@5 {train_prec5:.3f} \t"
            f"Validation Loss {val_loss:.4f} \t"
            f"Validation Prec@1 {val_prec1:.3f} \t"
            f"Validation Prec@5 {val_prec5:.3f} \n"
        )

        results.add(
            epoch=epoch + 1,
            train_loss=train_loss, val_loss=val_loss,
            train_error1=100 - train_prec1, val_error1=100 - val_prec1,
            train_error5=100 - train_prec5, val_error5=100 - val_prec5,
        )
        results.save()


def forward(
    data_loader: torch.utils.data.DataLoader,
    model: nn.Module,
    criterion: nn.Module,
    epoch: int = 0,
    training: bool = True,
    optimizer: torch.optim.Optimizer | None = None,
) -> tuple[float, float, float]:
    batch_time = AverageMeter()
    data_time  = AverageMeter()
    losses     = AverageMeter()
    top1       = AverageMeter()
    top5       = AverageMeter()

    end = time.time()
    for i, (inputs, target) in enumerate(data_loader):
        data_time.update(time.time() - end)

        if args.gpus is not None:
            target = target.cuda()

        inputs = inputs.type(args.type)

        if training:
            output = model(inputs)
        else:
            with torch.no_grad():
                output = model(inputs)

        loss = criterion(output, target)
        if isinstance(output, list):
            output = output[0]

        prec1, prec5 = accuracy(output.data, target, topk=(1, 5))
        losses.update(loss.item(), inputs.size(0))
        top1.update(prec1.item(), inputs.size(0))
        top5.update(prec5.item(), inputs.size(0))

        if training:
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

        batch_time.update(time.time() - end)
        end = time.time()

        if i % args.print_freq == 0:
            phase = "TRAINING" if training else "EVALUATING"
            logging.info(
                f"{phase} - Epoch: [{epoch}][{i}/{len(data_loader)}]\t"
                f"Time {batch_time.val:.3f} ({batch_time.avg:.3f})\t"
                f"Data {data_time.val:.3f} ({data_time.avg:.3f})\t"
                f"Loss {losses.val:.4f} ({losses.avg:.4f})\t"
                f"Prec@1 {top1.val:.3f} ({top1.avg:.3f})\t"
                f"Prec@5 {top5.val:.3f} ({top5.avg:.3f})"
            )

    return losses.avg, top1.avg, top5.avg


def train(
    data_loader: torch.utils.data.DataLoader,
    model: nn.Module,
    criterion: nn.Module,
    epoch: int,
    optimizer: torch.optim.Optimizer,
) -> tuple[float, float, float]:
    model.train()
    return forward(data_loader, model, criterion, epoch, training=True, optimizer=optimizer)


def validate(
    data_loader: torch.utils.data.DataLoader,
    model: nn.Module,
    criterion: nn.Module,
    epoch: int,
) -> tuple[float, float, float]:
    model.eval()
    return forward(data_loader, model, criterion, epoch, training=False, optimizer=None)


if __name__ == "__main__":
    main()
