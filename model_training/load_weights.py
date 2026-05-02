#!/usr/bin/env python3
"""
load_weights.py
===============
Pynq-side helper that reads the .bin weight files produced by export_weights.py
and streams them to the HLS accelerator via AXI DMA.

Typical notebook usage
----------------------
    from load_weights import WeightLoader, send_image

    ol     = Overlay("design.bit")
    dma    = ol.axi_dma_0
    loader = WeightLoader("weights/", dma)

    # Send all layer weights (call once per power-on, or after reset)
    loader.send_all_layers()

    # Inference
    result_buf = allocate(shape=(5,), dtype=np.uint32)
    dma.recvchannel.transfer(result_buf)

    send_image(dma, image_array)   # numpy uint16 array, shape (32,32,3), row-major

    dma.recvchannel.wait()
    probs = decode_output(result_buf)

File format (must match export_weights.py)
------------------------------------------
  12-byte header: magic(4) layer_id(1) version(1) flags(1) reserved(1) num_packets(4)
  Optional 4-byte compressed-length if flags & 0x01
  Payload: num_packets × 4-byte big-endian uint32 words

Inference packet flow
---------------------
The HLS kernel processes packets sequentially by pkt_id.  For one inference:
  1. Send the image (case 0 packets) — see send_image()
  2. Send layer 1 weight packets  → L1 conv+pool+BN computed
  3. Send layer 2 weight packets  → L2 conv+pool+BN computed
  4. Send layer 3 weight packets  → L3 …
  5. Send layer 4 weight packets  → L4 …
  6. Send layer 5 weight packets  → MLP-h1 computed
  7. Send layer 6 weight packets  → MLP-h2 computed
  8. Send layer 7 weight packets  → logits+softmax; 5 output packets emitted
  9. Send a TLAST sentinel        → kernel exits its while loop

Output: 5 × uint32, each packing two Q0.16 probabilities:
  word[i] = (probs[2i] << 16) | probs[2i+1]
"""

import struct
import zlib
from pathlib import Path

import numpy as np

try:
    from pynq import allocate
except ImportError:
    # Allow importing on a non-Pynq machine for testing
    def allocate(shape, dtype):
        return np.zeros(shape, dtype=dtype)

MAGIC      = 0x42434E4E
HEADER_FMT = ">IBBBBI"     # magic, layer_id, version, flags, reserved, num_packets
HEADER_SIZE = struct.calcsize(HEADER_FMT)   # 12 bytes

# pkt_id=0 with num_kerns=0 payload=0: harmless image-counter increment used
# as the TLAST sentinel at the end of the full inference stream.
_SENTINEL_WORD = np.uint32(0x00000000)


# ─── File reader ──────────────────────────────────────────────────────────────

def read_bin(path: str | Path) -> tuple[int, np.ndarray]:
    """Read a .bin weight file.

    Returns
    -------
    layer_id : int
    words    : np.ndarray of dtype uint32 (native endian), shape (N,)
    """
    with open(path, "rb") as f:
        raw_header = f.read(HEADER_SIZE)
        if len(raw_header) < HEADER_SIZE:
            raise ValueError(f"{path}: file too short to contain header")

        magic, layer_id, version, flags, _, num_packets = \
            struct.unpack(HEADER_FMT, raw_header)

        if magic != MAGIC:
            raise ValueError(f"{path}: bad magic 0x{magic:08X}, expected 0x{MAGIC:08X}")

        compressed = bool(flags & 0x01)

        if compressed:
            comp_len = struct.unpack(">I", f.read(4))[0]
            payload  = zlib.decompress(f.read(comp_len))
        else:
            payload = f.read(num_packets * 4)

    # Convert from big-endian file bytes to native uint32
    words = np.frombuffer(payload, dtype=">u4").astype(np.uint32)

    if len(words) != num_packets:
        raise ValueError(f"{path}: expected {num_packets} packets, got {len(words)}")

    return layer_id, words


# ─── DMA helpers ──────────────────────────────────────────────────────────────

def _dma_send(dma, words: np.ndarray) -> None:
    """Allocate a contiguous DMA buffer, copy words, and send."""
    buf = allocate(shape=(len(words),), dtype=np.uint32)
    buf[:] = words
    dma.sendchannel.transfer(buf)
    dma.sendchannel.wait()
    buf.free()


# ─── Image encoding ───────────────────────────────────────────────────────────

def encode_image(image: np.ndarray) -> np.ndarray:
    """Convert a (H, W, C) uint8/float image to a stream of pkt_id=0 words.

    The image is expected to be 32×32×3 (CIFAR layout).  Each pixel value is
    packed as a uint16 in bits[15:0] of a packet word with pkt_id=0, num_kerns=0.

    Layout: row-major, channel-last — pixel (row, col, ch) becomes packet
    index (row*W + col)*C + ch, matching the hardware's starting_image indexing.

    Parameters
    ----------
    image : np.ndarray, shape (32, 32, 3)
        uint8 (0-255) or float (0.0-1.0).  Float is scaled to 0-255.

    Returns
    -------
    words : np.ndarray of uint32, shape (3072,)
    """
    img = np.asarray(image, dtype=np.float32)
    if img.max() <= 1.0:
        img = img * 255.0
    img = np.clip(img, 0, 65535).astype(np.uint16)

    # Flatten to (H*W*C,) in row-major, channel-last order
    flat = img.reshape(-1)   # (3072,)

    # pkt_id=0, num_kerns=0 → word = pixel value in bits[15:0]
    # word[31:29]=0, word[28:27]=0, word[26:16]=0, word[15:0]=pixel
    words = flat.astype(np.uint32)
    return words


def send_image(dma, image: np.ndarray) -> None:
    """Encode and DMA a 32×32×3 image as pkt_id=0 packets."""
    words = encode_image(image)
    _dma_send(dma, words)


# ─── Output decoding ──────────────────────────────────────────────────────────

def decode_output(result_buf: np.ndarray) -> np.ndarray:
    """Convert 5 output uint32 words to 10 Q0.16 probabilities (float32 0-1).

    Each word packs two uint16 probabilities:
      word[i] = (prob[2i] << 16) | prob[2i+1]
    """
    probs_u16 = np.empty(10, dtype=np.uint16)
    for i, word in enumerate(result_buf[:5]):
        probs_u16[2 * i    ] = (int(word) >> 16) & 0xFFFF
        probs_u16[2 * i + 1] =  int(word)        & 0xFFFF
    return probs_u16.astype(np.float32) / 65535.0


def predicted_class(result_buf: np.ndarray) -> int:
    """Return the argmax class index from the 5 output words."""
    return int(np.argmax(decode_output(result_buf)))


# ─── WeightLoader ─────────────────────────────────────────────────────────────

class WeightLoader:
    """Loads per-layer .bin files and streams them to the HLS accelerator.

    Parameters
    ----------
    weight_dir : str or Path
        Directory containing layer1_conv.bin … layer7_mlp.bin.
    dma        : pynq.lib.dma.DMA
        AXI DMA instance connected to the accelerator's input stream.
    """

    # Expected file names in send order (image is handled separately)
    _LAYER_FILES = [
        "layer1_conv.bin",
        "layer2_conv.bin",
        "layer3_conv.bin",
        "layer4_conv.bin",
        "layer5_mlp.bin",
        "layer6_mlp.bin",
        "layer7_mlp.bin",
    ]

    def __init__(self, weight_dir: str | Path, dma) -> None:
        self.weight_dir = Path(weight_dir)
        self.dma        = dma
        self._cache: dict[str, np.ndarray] = {}

    def _load(self, filename: str) -> np.ndarray:
        """Load (with caching) a .bin file and return its packet words."""
        if filename not in self._cache:
            path = self.weight_dir / filename
            if not path.exists():
                raise FileNotFoundError(f"Weight file not found: {path}")
            layer_id, words = read_bin(path)
            self._cache[filename] = words
        return self._cache[filename]

    def preload(self) -> None:
        """Read all weight files into memory (optional warm-up call)."""
        print("Pre-loading weight files…")
        for fname in self._LAYER_FILES:
            words = self._load(fname)
            print(f"  {fname}: {len(words):,} packets cached")

    def send_layer(self, filename: str) -> None:
        """DMA one layer's weight packets to the accelerator."""
        words = self._load(filename)
        _dma_send(self.dma, words)

    def send_all_layers(self) -> None:
        """Send all weight layers in order (does not include image or sentinel).

        Call this after send_image() and before waiting on the receive channel.
        Or build the full inference sequence manually using send_layer().
        """
        for fname in self._LAYER_FILES:
            self.send_layer(fname)

    def run_inference(self,
                      image: np.ndarray,
                      recv_buf: np.ndarray | None = None
                      ) -> np.ndarray:
        """Full inference: image → weights → probabilities.

        IMPORTANT: everything is concatenated into one DMA transfer.
        The AXI DMA asserts TLAST at the end of every transfer, and the
        HLS kernel exits its while(!eos) loop the moment it sees TLAST.
        Sending image and weights as separate transfers would cause the
        kernel to exit after the image packets and never process weights.
        One transfer = TLAST fires exactly once, on the sentinel word.

        Parameters
        ----------
        image    : np.ndarray (32, 32, 3), uint8 or float
        recv_buf : pre-allocated uint32 buffer of length 5, or None

        Returns
        -------
        probs : np.ndarray of float32, shape (10,), values in [0, 1]
        """
        if recv_buf is None:
            recv_buf = allocate(shape=(5,), dtype=np.uint32)

        # Build one contiguous word array:
        #   image pixels  (3072 words, pkt_id=0)
        #   layer 1 weights + biases (pkt_id=1)
        #   layer 2 weights + biases (pkt_id=2)
        #   ...
        #   layer 7 weights + biases (pkt_id=7)
        #   sentinel (1 word, pkt_id=0, payload=0) — TLAST fires here only
        parts = [encode_image(image)]
        for fname in self._LAYER_FILES:
            parts.append(self._load(fname))
        parts.append(np.array([_SENTINEL_WORD], dtype=np.uint32))

        stream = np.concatenate(parts).astype(np.uint32)

        # Arm receive channel BEFORE sending so no output words are missed.
        # The kernel emits 5 words the instant the last MLP-out neuron
        # finalises — if receive isn't ready they are lost permanently.
        self.dma.recvchannel.transfer(recv_buf)

        # Send the entire inference stream as one DMA transfer.
        buf = allocate(shape=(len(stream),), dtype=np.uint32)
        buf[:] = stream
        self.dma.sendchannel.transfer(buf)
        self.dma.sendchannel.wait()
        buf.free()

        # Wait for the 5 output words from the kernel's softmax.
        self.dma.recvchannel.wait()

        return decode_output(recv_buf)
