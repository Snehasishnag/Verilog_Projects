# 4-Bit Ripple Carry Adder

A 4-bit Ripple Carry Adder (RCA) designed and implemented using **Verilog HDL**.

The circuit performs binary addition of two 4-bit numbers along with an input carry and produces a 4-bit sum and final carry output.

---

## 📌 Features

- 4-bit binary addition
- Carry-in input
- 4-bit Sum output
- Carry-out output
- Built using Full Adders
- Full Adders built using Half Adders
- Verilog HDL implementation
- Verilog testbench
- GTKWave waveform simulation

---

## 🧩 Circuit Structure

The 4-bit Ripple Carry Adder consists of **four Full Adders** connected in series.

```text
       A0 ─────┐
       B0 ─────┤
       Cin ────┤
               ▼
          ┌─────────┐
          │ Full    │
          │ Adder 0 │
          └────┬────┘
               │ C1
               ▼
          ┌─────────┐
       A1 ─► Full   │
       B1 ─► Adder 1│
          └────┬────┘
               │ C2
               ▼
          ┌─────────┐
       A2 ─► Full   │
       B2 ─► Adder 2│
          └────┬────┘
               │ C3
               ▼
          ┌─────────┐
       A3 ─► Full   │
       B3 ─► Adder 3│
          └────┬────┘
               │
              Cout
