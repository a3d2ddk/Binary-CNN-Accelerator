import torch.nn as nn

from .binarized_modules import BinarizeConv2d, BinarizeLinear


class our_net(nn.Module):
    """Binarized VGG-style network for CIFAR-10/100.

    Architecture follows the XNOR-Net / BNN paper: convolutional blocks with
    BatchNorm and Hardtanh activations, followed by three binarized FC layers.
    The inflation ratio widens each conv block relative to the standard VGG
    channel counts, compensating for representational capacity lost to binarization.

    Args:
        num_classes: Number of output classes. Defaults to 10 (CIFAR-10).
        infl_ratio: Channel-width multiplier for convolutional layers. Defaults to 3.
    """

    def __init__(self, num_classes: int = 10, infl_ratio: int = 1) -> None:
        super().__init__()
        self.infl_ratio = infl_ratio

        self.features = nn.Sequential(
            # Block 1 — 32×32
            BinarizeConv2d(3, 64 * infl_ratio, kernel_size=3, stride=1, padding=1, bias=True),
            nn.MaxPool2d(kernel_size=2, stride=2),   # → 16×16
            nn.BatchNorm2d(64 * infl_ratio),
            nn.Hardtanh(inplace=True),

            BinarizeConv2d(64 * infl_ratio, 128 * infl_ratio, kernel_size=3, padding=1, bias=True),
            nn.MaxPool2d(kernel_size=2, stride=2),   # → 8x8
            nn.BatchNorm2d(128 * infl_ratio),
            nn.Hardtanh(inplace=True),

            # Block 2 — 16×16
            BinarizeConv2d(128 * infl_ratio, 256 * infl_ratio, kernel_size=3, padding=1, bias=True),
            nn.MaxPool2d(kernel_size=2, stride=2),   # → 4x4
            nn.BatchNorm2d(256 * infl_ratio),
            nn.Hardtanh(inplace=True),

            # Block 3 — 8×8
            BinarizeConv2d(256 * infl_ratio, 512, kernel_size=3, padding=1, bias=True),
            nn.MaxPool2d(kernel_size=2, stride=2),   # → 2x2
            # nn.MaxPool2d(kernel_size=4, stride=4),   # → 2×2
            nn.BatchNorm2d(512),
            nn.Hardtanh(inplace=True),
        )

        # 512 channels × 4×4 spatial = 8192 features after flattening
        self.classifier = nn.Sequential(
            # 1
            # BinarizeLinear(512 * 4 * 4, 1024, bias=True),

            # 2
            # BinarizeLinear(512 * 2 * 2, 1024, bias=True),
            # nn.BatchNorm1d(1024),
            # nn.Hardtanh(inplace=True),
            # BinarizeLinear(1024, 1024, bias=True),
            # nn.BatchNorm1d(1024),
            # nn.Hardtanh(inplace=True),
            # BinarizeLinear(1024, num_classes, bias=True),

            # 3
            # BinarizeLinear(256 * 2 * 2, 512, bias=True),
            # BinarizeLinear(512 * 4 * 4, 256, bias=True),
            BinarizeLinear(512 * 2 * 2, 512, bias=True),
            nn.BatchNorm1d(512),
            nn.Hardtanh(inplace=True),
            BinarizeLinear(512, 512, bias=True),
            nn.BatchNorm1d(512),
            nn.Hardtanh(inplace=True),
            BinarizeLinear(512, num_classes, bias=True),
            nn.BatchNorm1d(num_classes, affine=False),
            nn.LogSoftmax(dim=1),
        )

        self.regime = {
            0:   {"optimizer": "Adam", "betas": (0.9, 0.999), "lr": 5e-3},
            40:  {"lr": 1e-3},
            80:  {"lr": 5e-4},
            100: {"lr": 1e-4},
            120: {"lr": 5e-5},
            140: {"lr": 1e-5},
        }

    def forward(self, x):
        x = self.features(x)
        x = x.flatten(start_dim=1)   # (N, 512, 4, 4) → (N, 8192)
        x = self.classifier(x)
        return x


def our_net_binary(**kwargs) -> our_net:
    """Construct a binarized VGG model for CIFAR-10/100.

    Keyword Args:
        num_classes (int): Number of output classes. Defaults to 10.
        infl_ratio (int): Channel-width multiplier. Defaults to 3.
    """
    num_classes = kwargs.get("num_classes", 10)
    infl_ratio  = kwargs.get("infl_ratio", 1)
    return our_net(num_classes=num_classes, infl_ratio=infl_ratio)
