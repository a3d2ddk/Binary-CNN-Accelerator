import math

import torch
import torch.nn as nn
from torch.autograd import Function


# ---------------------------------------------------------------------------
# Binarization / quantization functions
# ---------------------------------------------------------------------------

class Binarize(Function):
    """Straight-through estimator binarization.

    Forward: maps each weight/activation to ±scale via deterministic sign()
    or stochastic sampling.  Backward: identity (STE).
    """

    @staticmethod
    def forward(
        ctx,
        input: torch.Tensor,
        quant_mode: str = "det",
        allow_scale: bool = False,
    ) -> torch.Tensor:
        output = input.clone()
        scale = output.abs().max() if allow_scale else 1
        if quant_mode == "det":
            return output.div(scale).sign().mul(scale)
        # Stochastic binarization
        return (
            output.div(scale)
            .add_(1).div_(2)
            .add_(torch.rand_like(output).add_(-0.5))
            .clamp_(0, 1)
            .round_()
            .mul_(2).add_(-1)
            .mul(scale)
        )

    @staticmethod
    def backward(ctx, grad_output: torch.Tensor):
        # STE: pass gradient through unchanged.
        # Return None for quant_mode and allow_scale (non-tensor args).
        return grad_output, None, None


class Quantize(Function):
    """Uniform k-bit quantization with straight-through estimator."""

    @staticmethod
    def forward(
        ctx,
        input: torch.Tensor,
        quant_mode: str = "det",
        num_bits: int = 4,
    ) -> torch.Tensor:
        output = input.clone()
        scale = (2 ** num_bits - 1) / (output.max() - output.min())
        output = output.mul(scale).clamp(-(2 ** (num_bits - 1)) + 1, 2 ** (num_bits - 1))
        if quant_mode == "det":
            return output.round_().div_(scale)
        return output.round_().add_(torch.rand_like(output).add_(-0.5)).div_(scale)

    @staticmethod
    def backward(ctx, grad_output: torch.Tensor):
        # STE: pass gradient through unchanged.
        # Return None for quant_mode and num_bits (non-tensor args).
        return grad_output, None, None


def binarize(input: torch.Tensor, quant_mode: str = "det") -> torch.Tensor:
    """Functional interface for binarization."""
    return Binarize.apply(input, quant_mode)


def quantize(input: torch.Tensor, quant_mode: str = "det", num_bits: int = 4) -> torch.Tensor:
    """Functional interface for k-bit uniform quantization."""
    return Quantize.apply(input, quant_mode, num_bits)


# ---------------------------------------------------------------------------
# Loss functions
# ---------------------------------------------------------------------------

class HingeLoss(nn.Module):
    """Standard multiclass hinge loss with margin=1."""

    def __init__(self, margin: float = 1.0) -> None:
        super().__init__()
        self.margin = margin

    def forward(self, input: torch.Tensor, target: torch.Tensor) -> torch.Tensor:
        output = (self.margin - input.mul(target)).clamp(min=0)
        return output.mean()


class SqrtHingeLoss(Function):
    """Squared hinge loss with straight-through estimator.

    Uses the modern staticmethod-based autograd Function API.
    """

    @staticmethod
    def forward(ctx, input: torch.Tensor, target: torch.Tensor, margin: float = 1.0) -> torch.Tensor:
        output = (margin - input.mul(target)).clamp(min=0)
        ctx.save_for_backward(input, target)
        ctx.margin = margin
        loss = output.pow(2).sum().div(target.numel())
        return loss

    @staticmethod
    def backward(ctx, grad_output: torch.Tensor):
        input, target = ctx.saved_tensors
        output = (ctx.margin - input.mul(target)).clamp(min=0)
        grad = target.mul(-2).mul_(output).mul_(output.ne(0).float()).div_(input.numel())
        # Return None for the non-tensor `margin` argument
        return grad_output.expand_as(grad).mul(grad), grad_output.expand_as(grad).mul(grad), None


# ---------------------------------------------------------------------------
# Binarized layers
# ---------------------------------------------------------------------------

class BinarizeLinear(nn.Linear):
    """Fully-connected layer with binarized weights and (optionally) activations.

    The first layer (detected by ``in_features == 784``, i.e. raw MNIST pixels)
    receives full-precision input; all subsequent layers binarize their input.
    """

    def __init__(self, *args, **kwargs) -> None:
        super().__init__(*args, **kwargs)

    def forward(self, input: torch.Tensor) -> torch.Tensor:
        # Binarize input for all hidden layers; leave the first layer full-precision
        input_b = input if input.size(1) == 784 else binarize(input)
        weight_b = binarize(self.weight)
        out = nn.functional.linear(input_b, weight_b)
        if self.bias is not None:
            self.bias.org = self.bias.data.clone()
            out = out + self.bias.view(1, -1).expand_as(out)
        return out


class BinarizeConv2d(nn.Conv2d):
    """2-D convolution with binarized weights and (optionally) activations.

    The first layer (detected by ``in_channels == 3``, i.e. raw RGB input)
    receives full-precision input; all subsequent layers binarize their input.
    """

    def __init__(self, *args, **kwargs) -> None:
        super().__init__(*args, **kwargs)

    def forward(self, input: torch.Tensor) -> torch.Tensor:
        # Binarize input for all hidden layers; leave the RGB input layer full-precision
        input_b = input if input.size(1) == 3 else binarize(input)
        weight_b = binarize(self.weight)
        out = nn.functional.conv2d(
            input_b, weight_b, None,
            self.stride, self.padding, self.dilation, self.groups,
        )
        if self.bias is not None:
            self.bias.org = self.bias.data.clone()
            out = out + self.bias.view(1, -1, 1, 1).expand_as(out)
        return out
