# Hello-World的工程介绍

目前，在Hello-World部分，我们分别提供ESP32部分和FPGA部分的空白工程。其中，ESP32部分，分为Arduino平台和MicroPython平台两种方式。FPGA部分，均在Vivado平台实现，细分为纯硬核实现(verilog方式)与纯软核实现(MicroBlaze方式)

## ESP32部分

| 序号  | 归属  | 案例名称                                                    | 描述                                |
| ---- | ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | ESP32 | [HelloWorld-Arduino](/Hello-World/ESP32/Arduino-IDE)        | 本工程基于Arduino IDE平台，采用C语言实现   |
| 2    | ESP32 | [HelloWorld-MicroPython](/Hello-World/ESP32/MicroPython)    | 本工程基于MicroPython平台，采用MicroPython语言实现        |

## FPGA部分

| 序号  | 归属  | 案例名称                                                    | 描述                                |
| ---- | ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | FPGA | [HelloWorld-Verilog](/Hello-World/FPGA/Verilog)              | 本工程基于Vivado平台，采用纯verilog语言实现     |
| 2    | FPGA | [HelloWorld-MicroBlaze](/Hello-World/FPGA/MicroBlaze)        | 本工程基于Vivado和Xilinx SDK平台，采用纯C语言实现       |