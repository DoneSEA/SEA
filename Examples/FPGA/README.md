# FPGA Part

In this part, based on the FPGA part and peripheral resources of the SEA board, six groups of FPGA cases are divided, which are digital circuit class, communication interface class, IO interface class, module interface class, data interface class, and extended interface class.

## Case Composition Introduction

Among them, each group of cases includes several sub-cases of the corresponding type, such as the digital circuit part, including three series of cases: combinational logic circuit, sequential logic circuit, and state machine.

Each case, except the official IP core (frequency divider, etc.) that must be used, is implemented using verilog code (or has a soft core project).

### Repository Structure

| Number | Case Name                                                  | Discription                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Digital-Circuits](/Examples/FPGA/1.Digital-Circuits)        | Digital circuit cases, including three cases: combination logic, sequential logic, and state machine        |
| 2    | [Community-Interface](/Examples/FPGA/2.Community-Interface)  | Communication interface cases, including cases of SPI, IIC, UART, etc.    |
| 3    | [IO-Interface](/Examples/FPGA/3.IO-Interface)                | Common IO interface cases, including cases of LED, PWM generation, etc.       |
| 4    | [Module-Interface](/Examples/FPGA/4.Module-Interface)        | Module interface cases, including cases of on-board modules such as ADC, DAC, Mini HDMI, MIPI camera, gyroscope, etc.  |
| 5    | [Data-Interface](/Examples/FPGA/5.Data-Interface)            | Data interface cases, including basic data interactions in FPGA, such as BRAM, ROM, etc.         |
| 6    | [Extension-Interface](/Examples/FPGA/6.Extension-Interface)  | Expansion interface cases, including cases used by expansion boards, such as digital tubes, joysticks, Bluetooth, etc.           |
