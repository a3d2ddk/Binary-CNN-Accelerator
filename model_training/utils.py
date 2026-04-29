import logging
import logging.config
import shutil
from collections.abc import Callable
from pathlib import Path

import pandas as pd
import torch
import torch.optim


# ---------------------------------------------------------------------------
# Logging
# ---------------------------------------------------------------------------

def setup_logging(log_file: str | Path = "log.txt") -> None:
    """Configure root logger to write DEBUG+ to *log_file* and INFO+ to stdout."""
    logging.basicConfig(
        level=logging.DEBUG,
        format="%(asctime)s - %(levelname)s - %(message)s",
        datefmt="%Y-%m-%d %H:%M:%S",
        filename=str(log_file),
        filemode="w",
    )
    console = logging.StreamHandler()
    console.setLevel(logging.INFO)
    console.setFormatter(logging.Formatter("%(message)s"))
    logging.getLogger("").addHandler(console)


# ---------------------------------------------------------------------------
# Results logging
# ---------------------------------------------------------------------------

class ResultsLog:
    """Accumulates per-epoch metrics and persists them to CSV."""

    def __init__(self, path: str = "results.csv", plot_path: str | None = None) -> None:
        self.path = path
        # plot_path kept for API compatibility but plotting is no longer supported
        self.plot_path = plot_path or (path + ".html")
        self.results: pd.DataFrame | None = None

    def add(self, **kwargs) -> None:
        """Append one row of metrics (keyword arguments become columns)."""
        row = pd.DataFrame([kwargs])
        if self.results is None:
            self.results = row
        else:
            self.results = pd.concat([self.results, row], ignore_index=True)

    def save(self) -> None:
        """Write the accumulated results to CSV."""
        if self.results is not None:
            self.results.to_csv(self.path, index=False)

    def load(self, path: str | None = None) -> None:
        """Load previously saved results from CSV."""
        source = path or self.path
        if Path(source).is_file():
            self.results = pd.read_csv(source)


# ---------------------------------------------------------------------------
# Checkpointing
# ---------------------------------------------------------------------------

def save_checkpoint(
    state: dict,
    is_best: bool,
    path: str | Path = ".",
    filename: str = "checkpoint.pth.tar",
    save_all: bool = False,
) -> None:
    """Save *state* dict to *path/filename*.

    If *is_best* is True, also copies the file to ``model_best.pth.tar``.
    If *save_all* is True, additionally saves an epoch-stamped copy.
    """
    save_dir = Path(path)
    checkpoint_path = save_dir / filename
    torch.save(state, checkpoint_path)

    if is_best:
        shutil.copyfile(checkpoint_path, save_dir / "model_best.pth.tar")

    if save_all:
        epoch_filename = f"checkpoint_epoch_{state['epoch']}.pth.tar"
        shutil.copyfile(checkpoint_path, save_dir / epoch_filename)


# ---------------------------------------------------------------------------
# Metric tracking
# ---------------------------------------------------------------------------

class AverageMeter:
    """Tracks and computes the running average and current value of a scalar."""

    def __init__(self) -> None:
        self.reset()

    def reset(self) -> None:
        self.val: float = 0.0
        self.avg: float = 0.0
        self.sum: float = 0.0
        self.count: int = 0

    def update(self, val: float, n: int = 1) -> None:
        self.val = val
        self.sum += val * n
        self.count += n
        self.avg = self.sum / self.count


# ---------------------------------------------------------------------------
# Optimizer helpers
# ---------------------------------------------------------------------------

_OPTIMIZERS: dict[str, type[torch.optim.Optimizer]] = {
    "SGD":      torch.optim.SGD,
    "ASGD":     torch.optim.ASGD,
    "Adam":     torch.optim.Adam,
    "AdamW":    torch.optim.AdamW,
    "Adamax":   torch.optim.Adamax,
    "Adagrad":  torch.optim.Adagrad,
    "Adadelta": torch.optim.Adadelta,
    "Rprop":    torch.optim.Rprop,
    "RMSprop":  torch.optim.RMSprop,
}


def adjust_optimizer(
    optimizer: torch.optim.Optimizer,
    epoch: int,
    config: dict | Callable,
) -> torch.optim.Optimizer:
    """Reconfigure *optimizer* according to *epoch* and *config*.

    *config* can be:
      - A callable ``(epoch) -> settings_dict``
      - A ``{epoch: settings_dict}`` mapping (applied cumulatively / stickily)

    A settings dict may contain an ``'optimizer'`` key to swap the algorithm,
    plus any param-group keys to update (e.g. ``'lr'``, ``'momentum'``).
    """
    def _apply_settings(optimizer: torch.optim.Optimizer, setting: dict) -> torch.optim.Optimizer:
        if "optimizer" in setting:
            opt_cls = _OPTIMIZERS[setting["optimizer"]]
            optimizer = opt_cls(optimizer.param_groups)
            logging.debug(f"OPTIMIZER - method = {setting['optimizer']}")
        for param_group in optimizer.param_groups:
            for key in param_group:
                if key in setting:
                    logging.debug(f"OPTIMIZER - {key} = {setting[key]}")
                    param_group[key] = setting[key]
        return optimizer

    if callable(config):
        optimizer = _apply_settings(optimizer, config(epoch))
    else:
        for e in range(epoch + 1):   # iterate stickily up to current epoch
            if e in config:
                optimizer = _apply_settings(optimizer, config[e])

    return optimizer


# ---------------------------------------------------------------------------
# Accuracy
# ---------------------------------------------------------------------------

def accuracy(
    output: torch.Tensor,
    target: torch.Tensor,
    topk: tuple[int, ...] = (1,),
) -> list[torch.Tensor]:
    """Compute precision@k for each k in *topk*.

    Args:
        output: Raw model logits of shape ``(N, C)``.
        target: Ground-truth class indices of shape ``(N,)``.
        topk: Which top-k values to compute.

    Returns:
        A list of scalar tensors, one per value in *topk*, each holding the
        percentage of correct predictions within the top-k predictions.
    """
    maxk = max(topk)
    batch_size = target.size(0)

    _, pred = output.float().topk(maxk, dim=1, largest=True, sorted=True)
    pred = pred.t()  # (maxk, N)
    correct = pred.eq(target.view(1, -1).expand_as(pred))

    results: list[torch.Tensor] = []
    for k in topk:
        correct_k = correct[:k].reshape(-1).float().sum(0)
        results.append(correct_k.mul_(100.0 / batch_size))
    return results
