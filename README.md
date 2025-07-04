# Vending-Machine
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
## 📋 FSM State Transition Table

| Current State | Input  | Next State | Dispense (`out`) | Change (`change`) |
|---------------|--------|-------------|-------------------|--------------------|
| S0 (₹0)       | ₹0     | S0          | 0                 | ₹0 (2'b00)         |
| S0 (₹0)       | ₹5     | S1          | 0                 | ₹0 (2'b00)         |
| S0 (₹0)       | ₹10    | S2          | 0                 | ₹0 (2'b00)         |
| S1 (₹5)       | ₹0     | S0          | 0                 | ₹5 (2'b01)         |
| S1 (₹5)       | ₹5     | S2          | 0                 | ₹0 (2'b00)         |
| S1 (₹5)       | ₹10    | S0          | 1 (dispensed)     | ₹0 (2'b00)         |
| S2 (₹10)      | ₹0     | S0          | 0                 | ₹10 (2'b10)        |
| S2 (₹10)      | ₹5     | S0          | 1 (dispensed)     | ₹0 (2'b00)         |
| S2 (₹10)      | ₹10    | S0          | 1 (dispensed)     | ₹5 (2'b01)         |

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
<img width="700" alt="symbol" src="https://github.com/RANAJI2004/Vending-Machine/blob/main/Waveform.png">
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
