# SEA仓库组成简介

本仓库用于存储官方的SEA Board开发板案例，并提供社区交流。

仓库分为官方和社区两大组成部分。其中，官方的案例组成，目前包括三个部分：Hello-World, Examples, Demos。

目前，我们还没有开放社区交流部分，后续会随着整体的完善和推广，逐渐开放。

![](/Images/SEA.jpg)

## 官方案例部分

* Hello-World部分提供了FPGA与ESP32两个部分的空白工程。
* Examples部分提供了开发板的FPGA与ESP32两个部分的基础案例，以及丰富的FPGA开源IP核
* Demos部分作为官方的展示案例，根据应用方向的不同，分成了多个系列。它将提供SEA Board开发板的系统案例应用

下面，我们将以表格的形式来展示官方案例部分的组成

### Hello-World部分

目前，在Hello-World部分，我们分别提供ESP32部分和FPGA部分的空白工程。其中，ESP32部分，分为Arduino平台和MicroPython平台两种方式。FPGA部分，均在Vivado平台实现，细分为纯硬核实现(verilog方式)与纯软核实现(MicroBlaze方式)

| 序号  | 归属  | 案例名称                                                    | 描述                                |
| ---- | ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | ESP32 | [HelloWorld-Arduino](/Hello-World/ESP32/Arduino-IDE)        | 本工程基于Arduino IDE平台，采用C语言实现   |
| 2    | ESP32 | [HelloWorld-MicroPython](/Hello-World/ESP32/MicroPython)    | 本工程基于MicroPython平台，采用MicroPython语言实现        |
| 3    | FPGA | [HelloWorld-Verilog](/Hello-World/FPGA/Verilog)              | 本工程基于Vivado平台，采用纯verilog语言实现     |
| 4    | FPGA | [HelloWorld-MicroBlaze](/Hello-World/FPGA/MicroBlaze)        | 本工程基于Vivado和Xilinx SDK平台，采用纯C语言实现       |

### Examples部分

目前，Examples部分包括ESP32部分、FPGA部分和FPGA开源IP部分

* ESP32部分包含了ESP32的通信接口案例、IO接口案例等
* FPGA部分，除了提供基本的数字电路基础案例、通信接口案例、IO接口案例和数据接口案例之外，也提供了一系列基于SEA Board开发板板载模块的接口案例
* FPGA的开源IP部分，包含了FPGA入门的基本IP核以及IP核的设计工程，我们也将会不定期的丰富IP核部分

#### ESP32

尚未上传案例...

#### FPGA
 
| 序号 | 案例名称                                                      | 描述                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Digital-Circuits](/Examples/FPGA/1.Digital-Circuits)        | 数字电路系列案例，包括基本的组合逻辑电路案例、时序逻辑电路案例、状态机案例等         |
| 2    | [Community-Interface](/Examples/FPGA/2.Community-Interface)  | 通信接口系列案例，包括SPI、UART、IIC等                                           |
| 3    | [IO-Interface](/Examples/FPGA/3.IO-Interface)                | 普通IO接口案例，包括LED、PWM发生器、PPM解码器等                           |
| 4    | [Module-Interface](/Examples/FPGA/4.Module-Interface)        | 板载模块接口案例，包括ADC模块、DAC模块、Mini HDMI接口、MIPI摄像头接口、陀螺仪等     |
| 5    | [Data-Interface](/Examples/FPGA/5.Data-Interface)            | 数据接口案例，包括FPGA中的基本数据交互，如BRAM、ROM等                             |
| 6    | [Extension-Interface](/Examples/FPGA/6.Extension-Interface)  | 扩展接口案例，该案例需要和配套的扩展板使用，如数码管、摇杆、蓝牙、EEPROM等            |

#### FPGA-IP

| 序号 | IP核名称                                                      | 描述                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [ADC-IP](/Examples/FPGA-IP/ADC-IP)                           | 板载ADC1173模块的驱动IP核                        |
| 2    | [Camera-IP](/Examples/FPGA-IP/Camera-IP)                     | 板载CSI MIPI摄像头接口的驱动IP核，搭配树莓派OV5647摄像头使用     |
| 3    | [DAC-IP](/Examples/FPGA-IP/DAC-IP)                           | 板载DAC7311模块的驱动IP核       |
| 4    | [Frequency-Divider-IP](/Examples/FPGA-IP/Frequency-Divider-IP) | 整数分频器的IP核       |
| 5    | [Gyro-IP](/Examples/FPGA-IP/Gyro-IP)                         | 板载6轴传感器的驱动IP核       |
| 6    | [IIC-IP](/Examples/FPGA-IP/IIC-IP)                           |IIC接口的驱动IP核            |
| 7    | [Image-Process-IP](/Examples/FPGA-IP/Image-Process-IP)       | 图像处理相关的IP核      |
| 8    | [Mini-HDMI-IP](/Examples/FPGA-IP/Mini-HDMI-IP)               | Mini HDMI接口的相关IP核      |
| 9    | [LED-IP](/Examples/FPGA-IP/LED-IP)                           | 板载LED与RGB LED的驱动IP核   |
| 10   | [PWM-IP](/Examples/FPGA-IP/PWM-IP)                           | PWM发生器的IP核                   |
| 11   | [SPI-IP](/Examples/FPGA-IP/SPI-IP)                           | SPI接口的驱动IP核           |
| 12   | [UART-IP](Examples/FPGA-IP/UART-IP)                          | UART接口的驱动IP核          |
| 13   | [RGB2Stream-IP](/Examples/FPGA-IP/RGB2Stream-IP)             | RGB输入转流输出的IP核     |
| 14   | [Stream2RGB-IP](Examples/FPGA-IP/Stream2RGB-IP)              | 流输入转RGB输出的IP核     |

### Demos部分

目前，Demos部分根据SEA Board开发板的应用方向不同，划分为8个方向，分别为游戏应用、物联网IoT应用、图像处理应用、系统架构应用、算法应用、仪器仪表应用、接口应用、其他应用等

| 序号 | 案例名称                                                  | 描述                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Games](/Demos/1.Games)                           | 游戏类，例如贪吃蛇游戏等                                                        |
| 2    | [IoT](/Demos/2.IoT)                               | 物联网IoT类，例如AWS云，AES加密等                                               |
| 3    | [Image](/Demos/3.Image-Processing)                | 图像处理类，例如颜色识别、形状识别等                                             |
| 4    | [System](/Demos/4.System-Structure)               | 系统结构类，例如RISC等                                                          |
| 5    | [Algorithm](/Demos/5.Algorithm)                   | 算法类，例如LSTM算法等                                                          |
| 6    | [Instrumentation](/6.Demos/Instrumentation)       | 仪器仪表类，例如示波器、函数信号发生器等                                         |
| 7    | [Interface](/Demos/7.Interface)                   | 接口类，例如数字电路接口、传感IO扩展等                                           |
| 8    | [Others](/8.Demos/Others)                         | 其他类,例如Robotics，MISC，魔方等                                               |

## 社区交流部分

社区交流部分也被划分成多个方向，如果开发者有好的创作，那么可以根据自己项目的归属，上传到对应方向的目录下。当然，如果可以提供完善的技术手册和对应的项目介绍的话，我们将会把它放到我们的官方展示案例(Demos)中。



