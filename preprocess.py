import random

import torch
import torchvision.transforms as transforms

# ---------------------------------------------------------------------------
# CIFAR normalisation constants
# Computed from the CIFAR-10 training set; a close enough approximation
# for CIFAR-100 as both share the same image distribution origin.
# ---------------------------------------------------------------------------

_CIFAR_STATS: dict[str, list[float]] = {
    "mean": [0.4914, 0.4822, 0.4465],
    "std":  [0.2470, 0.2435, 0.2616],
}


# ---------------------------------------------------------------------------
# Transform pipelines
# ---------------------------------------------------------------------------

def scale_crop(
    input_size: int,
    scale_size: int | None = None,
    normalize: dict = _CIFAR_STATS,
) -> transforms.Compose:
    """Center-crop evaluation pipeline, optionally preceded by a resize."""
    t_list = [
        transforms.CenterCrop(input_size),
        transforms.ToTensor(),
        transforms.Normalize(**normalize),
    ]
    if scale_size is not None and scale_size != input_size:
        t_list = [transforms.Resize(scale_size)] + t_list
    return transforms.Compose(t_list)


def pad_random_crop(
    input_size: int,
    scale_size: int | None = None,
    normalize: dict = _CIFAR_STATS,
) -> transforms.Compose:
    """Random-crop with reflection padding — standard CIFAR augmentation."""
    padding = int((scale_size - input_size) / 2) if scale_size else 0
    return transforms.Compose([
        transforms.RandomCrop(input_size, padding=padding),
        transforms.RandomHorizontalFlip(),
        transforms.ToTensor(),
        transforms.Normalize(**normalize),
    ])


def get_transform(
    name: str,
    input_size: int | None = None,
    scale_size: int | None = None,
    normalize: dict | None = None,
    augment: bool = True,
) -> transforms.Compose:
    """Return the appropriate train or eval transform for a CIFAR dataset.

    Args:
        name: 'cifar10' or 'cifar100'.
        input_size: Spatial crop target. Defaults to 32.
        scale_size: Resize before cropping. Defaults to 40 (train) or 32 (eval).
        normalize: Override the normalisation stats dict.
        augment: If True, return the training transform; otherwise the eval transform.

    Returns:
        A ``torchvision.transforms.Compose`` pipeline.
    """
    if "cifar" not in name:
        raise ValueError(f"Unsupported dataset '{name}'. Only 'cifar10' and 'cifar100' are supported.")

    normalize  = normalize or _CIFAR_STATS
    input_size = input_size or 32

    if augment:
        scale_size = scale_size or 40
        return pad_random_crop(input_size, scale_size=scale_size, normalize=normalize)

    scale_size = scale_size or 32
    return scale_crop(input_size=input_size, scale_size=scale_size, normalize=normalize)


# ---------------------------------------------------------------------------
# Custom tensor transforms (operate on CHW float tensors post-ToTensor)
# ---------------------------------------------------------------------------

class Grayscale:
    """Convert an RGB tensor to luminance-weighted grayscale (ITU-R BT.601)."""

    def __call__(self, img: torch.Tensor) -> torch.Tensor:
        gs = img.clone()
        gs[0] = img[0].mul(0.299).add(img[1].mul(0.587)).add(img[2].mul(0.114))
        gs[1].copy_(gs[0])
        gs[2].copy_(gs[0])
        return gs


class Saturation:
    """Randomly blend an image towards its grayscale version."""

    def __init__(self, var: float) -> None:
        self.var = var

    def __call__(self, img: torch.Tensor) -> torch.Tensor:
        gs = Grayscale()(img)
        alpha = random.uniform(0, self.var)
        return img.lerp(gs, alpha)


class Brightness:
    """Randomly blend an image towards black."""

    def __init__(self, var: float) -> None:
        self.var = var

    def __call__(self, img: torch.Tensor) -> torch.Tensor:
        gs = torch.zeros_like(img)
        alpha = random.uniform(0, self.var)
        return img.lerp(gs, alpha)


class Contrast:
    """Randomly blend an image towards its mean grayscale value."""

    def __init__(self, var: float) -> None:
        self.var = var

    def __call__(self, img: torch.Tensor) -> torch.Tensor:
        gs = Grayscale()(img)
        gs = torch.full_like(gs, gs.mean())
        alpha = random.uniform(0, self.var)
        return img.lerp(gs, alpha)


class RandomOrder:
    """Apply a list of transforms in a uniformly random order."""

    def __init__(self, transforms: list) -> None:
        self.transforms = transforms

    def __call__(self, img: torch.Tensor) -> torch.Tensor:
        if not self.transforms:
            return img
        order = torch.randperm(len(self.transforms))
        for i in order:
            img = self.transforms[i](img)
        return img


class ColorJitter(RandomOrder):
    """Randomly jitter brightness, contrast, and saturation in a random order.

    Each component is only included if its coefficient is non-zero.
    """

    def __init__(
        self,
        brightness: float = 0.4,
        contrast:   float = 0.4,
        saturation: float = 0.4,
    ) -> None:
        augmentations = []
        if brightness != 0:
            augmentations.append(Brightness(brightness))
        if contrast != 0:
            augmentations.append(Contrast(contrast))
        if saturation != 0:
            augmentations.append(Saturation(saturation))
        super().__init__(augmentations)
