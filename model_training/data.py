import os
from pathlib import Path

import torchvision.datasets as datasets
from torch.utils.data import Dataset

_DATASETS_MAIN_PATH = Path(os.environ.get("DATASETS_ROOT", "./datasets"))

_SUPPORTED_DATASETS = ("cifar10", "cifar100")

_dataset_path: dict[str, Path] = {
    "cifar10":  _DATASETS_MAIN_PATH / "CIFAR10",
    "cifar100": _DATASETS_MAIN_PATH / "CIFAR100",
}


def get_dataset(
    name: str,
    split: str = "train",
    transform=None,
    target_transform=None,
    download: bool = True,
) -> Dataset:
    """Return a CIFAR-10 or CIFAR-100 dataset for the given split.

    Args:
        name: One of 'cifar10' or 'cifar100'.
        split: 'train' or 'val'.
        transform: Input transform applied to each sample.
        target_transform: Transform applied to each label.
        download: Whether to download the dataset if not found locally.

    Returns:
        A ``torch.utils.data.Dataset`` instance.
    """
    train = split == "train"

    match name:
        case "cifar10":
            return datasets.CIFAR10(
                root=_dataset_path["cifar10"],
                train=train,
                transform=transform,
                target_transform=target_transform,
                download=download,
            )
        case "cifar100":
            return datasets.CIFAR100(
                root=_dataset_path["cifar100"],
                train=train,
                transform=transform,
                target_transform=target_transform,
                download=download,
            )
        case _:
            raise ValueError(
                f"Unknown dataset '{name}'. Expected one of: {_SUPPORTED_DATASETS}"
            )
