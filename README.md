# Problem-96-One-hot-to-binary-encoder-and-back-
# Binary to One-Hot Decoder

A **Binary to One-Hot Decoder** takes an $M$-bit binary index input and activates precisely one output line out of $N$ possible output lines (where $N = 2^M$).

---

## Overview

In digital system design, a **Binary to One-Hot Decoder** acts as an index translator or selector. Instead of carrying multi-bit binary values across lines, it asserts a single line high (`1`) while keeping all other lines low (`0`).

### Primary Use Cases

* **Memory Addressing:** Converts address line bits into single word-line enable signals inside SRAM/DRAM chips.
* **Register Files:** Selects specific registers for read or write operations based on a register index.
* **Control Units & FSMs:** Translates encoded instructions or control states into active-high execution flags.

---

## Interface Specifications ($N = 8, M = 3$)

| Port Name | Direction | Bit Width | Description |
|---|---|---|---|
| `bin_in` | Input | `2:0` ($M$ bits) | $M$-bit binary input value |
| `one_hot_out` | Output | `7:0` ($N$ bits) | $N$-bit output vector with only one bit set high |

---

## Truth Table

| `bin_in[2:0]` | Decimal | `one_hot_out[7:0]` |
|:---:|:---:|:---:|
| `3'b000` | 0 | `8'b0000_0001` |
| `3'b001` | 1 | `8'b0000_0010` |
| `3'b010` | 2 | `8'b0000_0100` |
| `3'b011` | 3 | `8 me_hot_out = 8'b0000_1000` |
| `3'b100` | 4 | `8'b0001_0000` |
| `3'b101` | 5 | `8'b0010_0000` |
| `3'b110` | 6 | `8'b0100_0000` |
| `3'b111` | 7 | `8'b1000_0000` |

---
