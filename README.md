# ⚡ Asynchronous FIFO Design using Verilog

![Verilog](https://img.shields.io/badge/Verilog%20HDL-8957e5?style=flat-square)
![Vivado](https://img.shields.io/badge/Xilinx%20Vivado-2ea44f?style=flat-square)
![Digital Design](https://img.shields.io/badge/Digital%20Design-e36209?style=flat-square)
![RTL](https://img.shields.io/badge/RTL%20Simulation-0075ca?style=flat-square)
![CDC](https://img.shields.io/badge/CDC%20Design-0075ca?style=flat-square)

---

## 📌 Project Overview

This project implements an **Asynchronous FIFO (First In First Out)** buffer in Verilog HDL. An Async FIFO is used to safely transfer data between two clock domains operating at different frequencies — a critical concept in modern SoC and VLSI design. The design uses **Gray code pointers** to handle Clock Domain Crossing (CDC) and avoid metastability issues.

---

## ✨ Features

- ✅ Dual clock domain support (write clock & read clock)
- ✅ Gray code pointer synchronization for CDC
- ✅ Full & Empty flag generation
- ✅ Parameterized data width and FIFO depth
- ✅ Verified using single testbench in Vivado Simulator

---

## 🔌 Port Description

| Port | Direction | Description |
|------|-----------|-------------|
| wr_clk | Input | Write clock domain |
| rd_clk | Input | Read clock domain |
| wr_en | Input | Write enable signal |
| rd_en | Input | Read enable signal |
| din | Input | Data input |
| dout | Output | Data output |
| full | Output | FIFO full flag |
| empty | Output | FIFO empty flag |

---

## 🛠 Tools Used

| Tool | Purpose |
|------|---------|
| Xilinx Vivado | Design, Synthesis & Simulation |
| Verilog HDL | Hardware Description Language |

---

## 📁 File Structure

```
async-fifo/
├── async_fifo.v        ← Main FIFO module
├── tb_async_fifo.v     ← Testbench
├── waveform.png        ← Simulation waveform screenshot
└── README.md
```

---

## 📊 Simulation Waveform

![Waveform](waveform.png)

> Waveform showing write/read operations, full & empty flag behaviour simulated in Xilinx Vivado.

---

## 🎓 Learning Outcome

- Understood Clock Domain Crossing (CDC) in digital design
- Learned Gray code pointer synchronization technique
- Verified FIFO full/empty flag logic through simulation
- Gained practical experience with dual clock domain designs

---

## 👨‍💻 Author

**Arshad Ansari**  
M.Tech ECE (VLSI Design) — NIT Hamirpur  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-arshadansari04-0077B5?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/arshadansari04/)
    
