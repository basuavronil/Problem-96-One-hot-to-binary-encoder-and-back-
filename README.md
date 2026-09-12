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

## Block Diagram
