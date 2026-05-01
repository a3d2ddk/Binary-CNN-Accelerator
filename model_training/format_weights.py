import argparse
import json
import struct
import zlib
from pathlib import Path

import numpy as np
import torch

MAGIC       = 0x42434E4E   # "BCNN"
VERSION     = 1
HEADER_FMT  = ">IBBBBI"   # magic, layer_id, version, flags, reserved, num_packets
HEADER_SIZE = struct.calcsize(HEADER_FMT)   # 12 bytes
KERN        = 3            # spatial kernel size



def fold_bn(conv_bias: np.ndarray,
            gamma:     np.ndarray,
            beta:      np.ndarray,
            mean:      np.ndarray,
            var:       np.ndarray,
            eps:       float = 1e-5):

    std  = np.sqrt(var + eps)
    flip = gamma < 0

    safe_gamma = np.where(flip, -gamma, gamma)   # always positive

    threshold = mean - beta * std / safe_gamma

    folded = conv_bias - threshold

    folded[flip] = -folded[flip]

    overflow = np.abs(folded) > 32767
    if overflow.any():
        n = overflow.sum()
        print(f"  WARNING: {n} bias value(s) exceed int16 range and will be clipped")

    return np.clip(np.round(folded), -32768, 32767).astype(np.int16), flip


def fold_bn_output(conv_bias: np.ndarray,
                   mean:      np.ndarray,
                   var:       np.ndarray,
                   eps:       float = 1e-5):

    folded = conv_bias - mean
    overflow = np.abs(folded) > 32767
    if overflow.any():
        print(f"  WARNING: {overflow.sum()} output bias value(s) clipped to int16")
    return np.clip(np.round(folded), -32768, 32767).astype(np.int16)



def binarize_weights(w: np.ndarray, flip: np.ndarray | None = None) -> np.ndarray:
    w_bin = (w > 0).astype(np.uint8)
    if flip is not None and flip.any():
        # broadcast flip over all remaining dims
        idx = (flip,) + (np.newaxis,) * (w_bin.ndim - 1)
        w_bin[flip] = 1 - w_bin[flip]
    return w_bin



def make_word(pkt_id: int, num_kerns: int, payload: int) -> int:
    return ((pkt_id  & 0x7) << 29) \
         | ((num_kerns & 0x3) << 27) \
         | (payload & 0x07FF_FFFF)


def pack_kern_payload(kern_list: list[list[int]]) -> int:
    payload = 0
    for k, bits in enumerate(kern_list):
        for b, bit in enumerate(bits):
            if bit:
                payload |= 1 << (26 - k * 9 - b)
    return payload


def bias_packet(pkt_id: int, bias_i16: int) -> int:
    return make_word(pkt_id, 0, int(bias_i16) & 0xFFFF)



def conv_layer_packets(pkt_id:  int,
                       w_bin:   np.ndarray,   # (out_ch, in_ch, kH, kW) uint8
                       biases:  np.ndarray,   # (out_ch,) int16
                       ) -> list[int]:

    words = []
    out_ch, in_ch, kH, kW = w_bin.shape

    for oc in range(out_ch):
        ic = 0
        while ic < in_ch:
            nk = min(3, in_ch - ic)
            kern_list = []
            for k in range(nk):
                bits = [int(w_bin[oc, ic + k, kh, kw])
                        for kh in range(kH) for kw in range(kW)]
                kern_list.append(bits)
            words.append(make_word(pkt_id, nk, pack_kern_payload(kern_list)))
            ic += nk
        words.append(bias_packet(pkt_id, biases[oc]))

    return words


def mlp_layer_packets(pkt_id:  int,
                      w_bin:   np.ndarray,   # (out_n, in_n) uint8
                      biases:  np.ndarray,   # (out_n,) int16
                      ) -> list[int]:

    words = []
    out_n, in_n = w_bin.shape

    for n in range(out_n):
        processed = 0
        while processed < in_n:
            remaining = in_n - processed
            # 3 9bit groups
            nk = min(3, (remaining + 8) // 9)
            kern_list = []
            for k in range(nk):
                start = processed + k * 9
                bits = []
                for i in range(start, start + 9):
                    bits.append(int(w_bin[n, i]) if i < in_n else 0)
                kern_list.append(bits)
            words.append(make_word(pkt_id, nk, pack_kern_payload(kern_list)))
            processed += nk * 9
        words.append(bias_packet(pkt_id, biases[n]))

    return words



def write_bin(path: Path,
              layer_id: int,
              words: list[int],
              compress: bool) -> dict:

    raw   = struct.pack(f">{len(words)}I", *words)
    flags = 0x01 if compress else 0x00

    header = struct.pack(HEADER_FMT,
                         MAGIC, layer_id & 0xFF, VERSION, flags, 0,
                         len(words))

    with open(path, "wb") as f:
        f.write(header)
        if compress:
            comp = zlib.compress(raw, level=9)
            f.write(struct.pack(">I", len(comp)))
            f.write(comp)
            stored_bytes = len(comp)
        else:
            f.write(raw)
            stored_bytes = len(raw)

    raw_kb   = len(raw)   / 1024
    store_kb = stored_bytes / 1024
    ratio    = store_kb / raw_kb * 100

    info = {
        "file":         path.name,
        "layer_id":     layer_id,
        "num_packets":  len(words),
        "raw_kb":       round(raw_kb,   2),
        "stored_kb":    round(store_kb, 2),
        "compressed":   compress,
    }

    tag = f"{store_kb:.1f} KB ({ratio:.0f}% of raw)" if compress else f"{raw_kb:.1f} KB"
    print(f"  → {path.name}: {len(words):,} packets, {tag}")
    return info



def main() -> None:
    ap = argparse.ArgumentParser(
        description="Export binarized CNN checkpoint to HLS-ready .bin files")
    ap.add_argument("checkpoint",
                    help="Path to model_best_pth.tar")
    ap.add_argument("--out", default="weights",
                    help="Output directory (default: weights/)")
    ap.add_argument("--compress", action="store_true",
                    help="zlib-compress the payload of each .bin file")
    args = ap.parse_args()

    out_dir = Path(args.out)
    out_dir.mkdir(parents=True, exist_ok=True)

    # load checkpoint
    print(f"\nLoading checkpoint: {args.checkpoint}")
    ckpt = torch.load(args.checkpoint, map_location="cpu")
    sd   = ckpt["state_dict"]

    # strip DataParallel "module." prefix if present
    if any(k.startswith("module.") for k in sd):
        print("  (stripping DataParallel 'module.' prefix)")
        sd = {k[7:]: v for k, v in sd.items()}

    def np_(key: str) -> np.ndarray:
        return sd[key].float().numpy()

    manifest = {"version": VERSION, "layers": []}

    conv_cfg = [
        # (pkt_id, conv_weight_key, conv_bias_key, bn_prefix)
        (1, "features.0.weight",  "features.0.bias",  "features.2"),
        (2, "features.4.weight",  "features.4.bias",  "features.6"),
        (3, "features.8.weight",  "features.8.bias",  "features.10"),
        (4, "features.12.weight", "features.12.bias", "features.14"),
    ]

    for pid, wk, bk, bn in conv_cfg:
        out_ch, in_ch = np_(wk).shape[:2]
        print(f"\nConv L{pid}  ({in_ch}→{out_ch} ch, pkt_id={pid}):")

        w      = np_(wk)
        b_conv = np_(bk)
        gamma  = np_(f"{bn}.weight")
        beta   = np_(f"{bn}.bias")
        mean_  = np_(f"{bn}.running_mean")
        var_   = np_(f"{bn}.running_var")

        biases, flip = fold_bn(b_conv, gamma, beta, mean_, var_)

        n_flip = int(flip.sum())
        if n_flip:
            print(f"  {n_flip}/{out_ch} channels have γ<0 → weight bits flipped")

        w_bin = binarize_weights(w, flip)   # (out_ch, in_ch, 3, 3)

        # Sanity: packets/output-channel = ceil(in_ch/3) weight + 1 bias
        pkts_per_oc = (in_ch + 2) // 3 + 1
        print(f"  {pkts_per_oc} pkts/output-ch × {out_ch} = "
              f"{pkts_per_oc * out_ch:,} pkts")

        words = conv_layer_packets(pid, w_bin, biases)
        info  = write_bin(out_dir / f"layer{pid}_conv.bin", pid, words, args.compress)
        manifest["layers"].append(info)

    mlp_cfg = [
        # (pkt_id, weight_key, bias_key, bn_prefix, bn_has_affine)
        (5, "classifier.0.weight", "classifier.0.bias", "classifier.1", True),
        (6, "classifier.3.weight", "classifier.3.bias", "classifier.4", True),
        (7, "classifier.6.weight", "classifier.6.bias", "classifier.7", False),
    ]

    mlp_names = {5: "MLP-h1", 6: "MLP-h2", 7: "MLP-out"}

    for pid, wk, bk, bn, has_affine in mlp_cfg:
        out_n, in_n = np_(wk).shape
        print(f"\n{mlp_names[pid]}  ({in_n}→{out_n}, pkt_id={pid}):")

        w      = np_(wk)
        b_lin  = np_(bk)
        mean_  = np_(f"{bn}.running_mean")
        var_   = np_(f"{bn}.running_var")

        if pid == 7:
            # output layer: not binarised in hardware; fold mean only
            biases = fold_bn_output(b_lin, mean_, var_)
            w_bin  = binarize_weights(w)
        else:
            gamma = np_(f"{bn}.weight")
            beta  = np_(f"{bn}.bias")
            biases, flip = fold_bn(b_lin, gamma, beta, mean_, var_)
            n_flip = int(flip.sum())
            if n_flip:
                print(f"  {n_flip}/{out_n} neurons have γ<0 → weight bits flipped")
            w_bin = binarize_weights(w, flip)

        # packets per neuron
        ppp = (in_n + 26) // 27 * 3 + 1
        print(f"  ~{ppp} pkts/neuron × {out_n} = ~{ppp * out_n:,} pkts")

        words = mlp_layer_packets(pid, w_bin, biases)
        info  = write_bin(out_dir / f"layer{pid}_mlp.bin", pid, words, args.compress)
        manifest["layers"].append(info)

    manifest_path = out_dir / "manifest.json"
    with open(manifest_path, "w") as f:
        json.dump(manifest, f, indent=2)
    print(f"\nManifest: {manifest_path}")

    total_raw_kb = sum(l["raw_kb"] for l in manifest["layers"])
    total_stor_kb = sum(l["stored_kb"] for l in manifest["layers"])
    print(f"\nTotal: {total_raw_kb:.1f} KB raw, {total_stor_kb:.1f} KB on disk")
    print(f"Done. Files written to '{out_dir}/'")


if __name__ == "__main__":
    main()
