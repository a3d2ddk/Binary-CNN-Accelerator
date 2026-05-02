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


def read_bin(path: str | Path) -> tuple[int, np.ndarray]:

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
    del buf


# ─── Image encoding ───────────────────────────────────────────────────────────

def encode_image(image: np.ndarray) -> np.ndarray:
    
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
    words = encode_image(image)
    _dma_send(dma, words)


def decode_output(result_buf: np.ndarray) -> np.ndarray:
    
    probs_u16 = np.empty(10, dtype=np.uint16)
    for i, word in enumerate(result_buf[:5]):
        probs_u16[2 * i    ] = (int(word) >> 16) & 0xFFFF
        probs_u16[2 * i + 1] =  int(word)        & 0xFFFF
    return probs_u16.astype(np.float32) / 65535.0


def predicted_class(result_buf: np.ndarray) -> int:
    return int(np.argmax(decode_output(result_buf)))


class WeightLoader:

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

    def __init__(self, weight_dir: str | Path, dma, kernel) -> None:
        self.weight_dir = Path(weight_dir)
        self.dma        = dma
        self.kernel     = kernel   # AXI-Lite control IP (ol.kernel_0)
        self._cache: dict[str, np.ndarray] = {}

    def _load(self, filename: str) -> np.ndarray:
        if filename not in self._cache:
            path = self.weight_dir / filename
            if not path.exists():
                raise FileNotFoundError(f"Weight file not found: {path}")
            layer_id, words = read_bin(path)
            self._cache[filename] = words
        return self._cache[filename]

    def preload(self) -> None:
        print("Pre-loading weight files…")
        for fname in self._LAYER_FILES:
            words = self._load(fname)
            print(f"  {fname}: {len(words):,} packets cached")

    def send_layer(self, filename: str) -> None:
        words = self._load(filename)
        _dma_send(self.dma, words)

    def send_all_layers(self) -> None:
        for fname in self._LAYER_FILES:
            self.send_layer(fname)

    def run_inference(self,
                      image: np.ndarray,
                      recv_buf: np.ndarray | None = None
                      ) -> np.ndarray:
        if recv_buf is None:
            recv_buf = allocate(shape=(5,), dtype=np.uint32)

        parts = [encode_image(image)]
        for fname in self._LAYER_FILES:
            parts.append(self._load(fname))
        parts.append(np.array([_SENTINEL_WORD], dtype=np.uint32))

        stream = np.concatenate(parts).astype(np.uint32)

        # Arm receive channel BEFORE sending so no output words are missed.
        # The kernel emits 5 words the instant the last MLP-out neuron
        # finalises — if receive isn't ready they are lost permanently.
        self.dma.recvchannel.transfer(recv_buf)

        # Start the kernel — write AP_START (bit 0) to the control register.
        # Without this the kernel stays AP_IDLE and TREADY on port A stays
        # low, causing the DMA send channel to stall indefinitely.
        # Control register 0x00: bit0=AP_START, bit1=AP_DONE, bit2=AP_IDLE
        self.kernel.write(0x00, 0x1)

        # Send the entire inference stream as one DMA transfer.
        buf = allocate(shape=(len(stream),), dtype=np.uint32)
        buf[:] = stream
        self.dma.sendchannel.transfer(buf)
        self.dma.sendchannel.wait()
        del buf

        # Wait for the 5 output words from the kernel's softmax.
        self.dma.recvchannel.wait()

        # Poll AP_DONE (bit 1) to confirm the kernel has finished cleanly
        # before returning.  Necessary to ensure the kernel is in a known
        # state before the next inference call restarts it.
        while not (self.kernel.read(0x00) & 0x2):
            pass

        return decode_output(recv_buf)