# FPGA部分

FPGA部分，除了提供基本的数字电路基础案例、通信接口案例、IO接口案例和数据接口案例之外，也提供了一系列基于SEA Board开发板板载模块的接口案例

## 案例组成简介

其中，每组案例包括相应类型的几个子案例，例如数字电路部分，包括三个系列案例：组合逻辑电路，顺序逻辑电路和状态机。

除必须使用的官方IP核（分频器等）外，每种情况均使用verilog代码（或具有软核项目）实现。

## 仓库组成

| 序号 | 案例名称                                                      | 描述                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Digital-Circuits](/Examples/FPGA/1.Digital-Circuits)        | 数字电路系列案例，包括基本的组合逻辑电路案例、时序逻辑电路案例、状态机案例等         |
| 2    | [Community-Interface](/Examples/FPGA/2.Community-Interface)  | 通信接口系列案例，包括SPI、UART、IIC等                                           |
| 3    | [IO-Interface](/Examples/FPGA/3.IO-Interface)                | 普通IO接口案例，包括LED、PWM发生器、PPM解码器等                           |
| 4    | [Module-Interface](/Examples/FPGA/4.Module-Interface)        | 板载模块接口案例，包括ADC模块、DAC模块、Mini HDMI接口、MIPI摄像头接口、陀螺仪等     |
| 5    | [Data-Interface](/Examples/FPGA/5.Data-Interface)            | 数据接口案例，包括FPGA中的基本数据交互，如BRAM、ROM等                             |
| 6    | [Extension-Interface](/Examples/FPGA/6.Extension-Interface)  | 扩展接口案例，该案例需要和配套的扩展板使用，如数码管、摇杆、蓝牙、EEPROM等            |
