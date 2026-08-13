# 4-Bit BCD Adder

A 4-bit Binary Coded Decimal (BCD) Adder implemented using Verilog HDL. This project performs addition of two 4-bit BCD numbers and produces a valid BCD result. The design is built using Half Adders, Full Adders, 4-bit Ripple Carry Adders (RCA), and BCD correction logic.

## Project Overview

BCD represents each decimal digit using 4 binary bits.

| Decimal | BCD |
|---:|:---:|
| 0 | 0000 |
| 1 | 0001 |
| 2 | 0010 |
| 3 | 0011 |
| 4 | 0100 |
| 5 | 0101 |
| 6 | 0110 |
| 7 | 0111 |
| 8 | 1000 |
| 9 | 1001 |

A normal 4-bit binary adder can produce results from `0000` to `1111` (0 to 15). However, BCD only allows values from `0000` to `1001` for a single decimal digit.

Therefore, when the binary addition produces a value greater than 9, the circuit adds `0110` to obtain the correct BCD result.

## Working Principle

The BCD adder operates in two stages:

1. The two 4-bit BCD inputs are added using a 4-bit Ripple Carry Adder.
2. The intermediate result is checked using BCD correction logic.
3. If correction is required, `0110` is added to the intermediate result using a second Ripple Carry Adder.
4. The final output represents the valid BCD result.

### BCD Correction Condition

Correction is required when:

```text
Carry = 1
             A (4-bit BCD)
                    │
                    │
                    ▼
              ┌──────────┐
              │   RCA 1  │
              └────┬─────┘
                   │
                   ▼
            Intermediate Sum
                   │
                   ▼
          ┌─────────────────┐
          │ BCD Correction  │
          │     Logic       │
          └────────┬────────┘
                   │
              Correction
                   │
                   ▼
                 0110
                   │
                   ▼
              ┌──────────┐
              │   RCA 2  │
              └────┬─────┘
                   │
                   ▼
              BCD Output
BCD Adder
│
├── RCA
│   ├── Full Adder
│   │   ├── Half Adder
│   │   └── Half Adder
│   ├── Full Adder
│   ├── Full Adder
│   └── Full Adder
│
├── BCD Correction Logic
│   ├── AND Gate
│   ├── AND Gate
│   └── OR Gate
│
└── RCA
    ├── Full Adder
    ├── Full Adder
    ├── Full Adder
    └── Full Adder
