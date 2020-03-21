# Hello-World工程使用介绍

本仓库用于存放SEA的ESP32与FPGA的基础工程案例(Hello-World)。

## ESP32部分

ESP32目录内包含Arduino IDE平台(C语言)工程、MicroPython平台(MicroPython语言)的源代码。

## FPGA部分

FPGA目录内包含纯硬核(Verilog)工程、纯软核工程(MicroBlaze)的源代码。

## 内容结构介绍

具体内容如下:

| 序号 | 属性 | 名称                                                         | 描述                                       |
| ---- | ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | ESP32 | [HelloWorld-Arduino](/Hello-World/ESP32/Arduino-IDE)         | 基于Arduino IDE平台，采用C语言编写的工程    |
| 2    | ESP32 | [HelloWorld-MicroPython](/Hello-World/ESP32/MicroPython)   | 基于MicroPython平台，采用MicroPython语言编写的工程       |
| 3    | FPGA | [HelloWorld-Verilog](/Hello-World/FPGA/Verilog)              | 纯硬核，采用Verilog语言编写的Vivado工程     |
| 4    | FPGA | [HelloWorld-MicroBlaze](/Hello-World/FPGA/MicroBlaze)        | 纯软核，采用C语言编写的Vivado SDK工程       |
