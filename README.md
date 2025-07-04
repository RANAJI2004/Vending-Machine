# Vending-Machine
Verilog-based Finite State Machine (FSM) project simulating a vending machine that accepts ₹5 and ₹10 coins to dispense a single product worth ₹15 with proper change handling.


This project simulates a simple Finite State Machine (FSM)-based vending machine using Verilog. The machine accepts ₹5 and ₹10 currency denominations and dispenses **a single product worth ₹15**. If the inserted amount exceeds ₹15, the machine also returns the appropriate change.

---

##  Features

- Accepts ₹5 and ₹10 coins only.
- Dispenses product once ₹15 is collected.
- Returns change if the inserted amount is ₹20.
- Built using FSM with three defined states:
  - `S0`: ₹0 inserted
  - `S1`: ₹5 inserted
  - `S2`: ₹10 inserted

---

##  State Diagram

- **States**: `S0`, `S1`, `S2`
- **Transitions**: Based on coin input (₹5 or ₹10)
- **Output**:
  - `dispense = 1` when ₹15 is completed
  - `change` shows remaining money if more than ₹15 is inserted

---

## 📁 File Structure

| File | Description |
|------|-------------|
| `vending_machine.v` | Verilog code implementing the FSM |
| `vending_machine_tb.v` | Testbench for simulating FSM |
| `README.md` | Project documentation |

---

##  How to Run

1. Use **ModelSim**, **Xilinx Vivado**, **EDA Playground**, or any Verilog simulator.
2. Run `vending_machine_tb.v` to test the design.
3. Observe waveform and output logs to verify transitions and dispense/change signals.

---

## 📷 Output Sample

> Simulation shows proper dispense and change output based on ₹5 and ₹10 inputs.

---

## 🛠️ Tools Used

- Verilog HDL
- Any Verilog simulator (ModelSim, Vivado, EDA Playground)

---

##  Author

**Saksham Rana**  
3rd Year B.Tech (ECE)  
Delhi Technological University  
Project: FSM-based Vending Machine in Verilog

---

## 📝 License

This project is open-source and free to use under the [MIT License](LICENSE).
