```markdown
# Classic and Modified SSI-Based Communication

## Overview

(SSI = Synchronous Serial Interface).

This project describes the design, implementation, and verification of a serial communication system based on two different variants of the SSI (Synchronous Serial Interface) protocol. The system is implemented in VHDL and synthesized on an Intel MAX 10 FPGA development board. The design integrates an SSI master and an SSI slave within a common top-level module (`ssi_top`), where the slave provides a hardcoded position vector to the master. The master then evaluates, validates, and displays the received data in real time on the board’s seven-segment displays.


---

## Features

- Support for two different SSI communication modes
- SSI master and SSI slave implementation in VHDL
- Real-time data transmission and reception
- Position data validation using parity bit checking
- Seven-segment display output for data verification
- FPGA-based implementation on an Intel MAX 10 development board
- Synchronous serial communication using clock and data signals
- Configurable SSI timing parameters
- Error detection through parity verification
- Modular design using separate VHDL components
- Simulation and hardware verification of the communication system
-

---

## Project Structure

```

project/
│
├── src/              # VHDL source files
├── sim/              # Testbench files
├── constraints/      # Timing constraints (.sdc)
├── documents/        # Technical report(Swidish)
├── ssi_protocol.qpf  # Quartus project file
├── ssi_top.qsf       # Quartus settings file
├── README.md
└── .gitignore

```

---

## Requirements

- Intel Quartus Prime
- ModelSim (optional, for simulation)
- FPGA development board (if applicable) DE10 Lite

---

## Getting Started

1. Clone the repository.
2. Open `ssi_protocol.qpf` in Intel Quartus Prime.
3. Compile the project.
4. Program the FPGA (if using hardware).
5. Run simulations if testbenches are provided.

---

## Simulation

Simulation files are located in the `sim/` directory.
Add wave.do in the ssi_top_run_msim_rtl_vhdl.do

Run the testbench using ModelSim or your preferred VHDL simulator.

---

## Authors

- Sasha Soloviova
linkedin: www.linkedin.com/in/sasha-s-57097a291

---

