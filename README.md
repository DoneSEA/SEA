# SEA

本仓库用于存放SEA板卡的官方案例，并提供社区交流。

![](/Images/SEA.jpg)

## 官方案例

官方案例，目前包括Hello World部分、Examples基础案例部分、Demos系统案例部分。

### Hello World

Hello World部分，提供SEA板卡的空白工程，包括ESP32部分和FPGA部分。

| 序号 | 属性 | 名称                                                         | 描述                                       |
| ---- | ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | ESP32 | [HelloWorld-Arduino](/Hello-World/ESP32/Arduino-IDE)         | 基于Arduino IDE平台，采用C语言编写的工程    |
| 2    | ESP32 | [HelloWorld-MicroPython](/Hello-World/ESP32/MicroPython)   | 基于MicroPython平台，采用MicroPython语言编写的工程       |
| 3    | FPGA | [HelloWorld-Verilog](/Hello-World/FPGA/Verilog)              | 纯硬核，采用Verilog语言编写的Vivado工程     |
| 4    | FPGA | [HelloWorld-MicroBlaze](/Hello-World/FPGA/MicroBlaze)        | 纯软核，采用C语言编写的Vivado SDK工程       |

### Examples

Examples部分，提供SEA板卡的基础案例，包括ESP32部分的基础案例、FPGA部分的案例以及FPGA的IP核。

#### ESP32

待补充......

#### FPGA

| 序号 | 名称                                                         | 描述                                       |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Digital-Circuits](/Examples/FPGA/1.Digital-Circuits)        | 数字电路案例，包含组合、时序、状态机三个系列的案例                   |
| 2    | [Community-Interface](/Examples/FPGA/2.Community-Interface)  | 通信接口案例，包含SPI、IIC、UART等的案例                            |
| 3    | [IO-Interface](/Examples/FPGA/3.IO-Interface)                | 普通IO接口案例，包含LED使用、PWM发生等的案例                        |
| 4    | [Module-Interface](/Examples/FPGA/4.Module-Interface)        | 模块接口案例，包含ADC、DAC、HDMI、MIPI摄像头、陀螺仪等板载模块的案例  |
| 5    | [Data-Interface](/Examples/FPGA/5.Data-Interface)            | 数据接口案例，包含FPGA中基本数据存取，如BRAM、ROM的使用案例          |
| 6    | [Extension-Interface](/Examples/FPGA/6.Extension-Interface)  | 扩展接口案例，包含扩展板使用的案例，如数码管、摇杆、蓝牙等           |

#### FPGA-IP

| 序号 | 名称                                                         | 描述                                       |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [ADC-IP](/Examples/FPGA-IP/ADC-IP)                           | 板载ADC模块的驱动IP核                        |
| 2    | [Camera-IP](/Examples/FPGA-IP/Camera-IP)                     | 板载MIPI摄像头的驱动IP核                     |
| 3    | [DAC-IP](/Examples/FPGA-IP/DAC-IP)                           | 板载DAC模块的驱动IP核                        |
| 4    | [Frequency-Divider-IP](/Examples/FPGA-IP/Frequency-Divider-IP) | 整数分频器的驱动IP核                       |
| 5    | [Gyro-IP](/Examples/FPGA-IP/Gyro-IP)                         | 板载陀螺仪的驱动IP核                         |
| 6    | [IIC-IP](/Examples/FPGA-IP/IIC-IP)                           | IIC接口的驱动IP核                           |
| 7    | [Image-Process-IP](/Examples/FPGA-IP/Image-Process-IP)       | 图像处理相关的IP核                           |
| 8    | [LED-IP](/Examples/FPGA-IP/LED-IP)                           | 板载LED/RGB LED的驱动IP核                   |
| 9    | [PWM-IP](/Examples/FPGA-IP/PWM-IP)                           | PWM发生器的IP核                             |
| 10   | [SPI-IP](/Examples/FPGA-IP/SPI-IP)                           | SPI接口的驱动IP核                           |
| 11   | [UART-IP](Examples/FPGA-IP/UART-IP)                          | UART接口的驱动IP核                          |
| 12   | [RGB2Stream-IP](/Examples/FPGA-IP/RGB2Stream-IP)             | RGB图像输入转流输出的IP核                    |
| 13   | [Stream2RGB-IP](Examples/FPGA-IP/Stream2RGB-IP)              | 流输入转RGB图像输出的IP核                    |

### Demos

Demos部分，提供SEA板卡的系统案例。

| 序号 | 名称                                                         | 描述                                       |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Games-Applications](/Demos/1.Games-Applications)                           | 游戏类应用，包含贪吃蛇游戏等                  |
| 2    | [IoT-Applications](/Demos/2.IoT-Applications)                               | 物联网类应用，包含AWS云、AES加密等            |
| 3    | [Image-Processing-Applications](/Demos/3.Image-Processing-Applications)     | 图像处理类应用，包含颜色、形状处理等           |
| 4    | [System-Structure-Applications](/Demos/4.System-Structure-Applications)     | 系统架构类应用，如RISC-V框架等                |
| 5    | [Algorithm-Applications](/Demos/5.Algorithm-Applications)                   | 算法类应用，如LSTM算法等                      |
| 6    | [Instrumentation-Applications](/6.Demos/Instrumentation-Applications)       | 仪器仪表类应用                               |
| 7    | [Interface-Applications](/Demos/7.Interface-Applications)                   | 接口类应用，如数字电路、传感器IO扩展           |
| 8    | [Others-Applications](/8.Demos/Others-Applications)                         | 其他类应用，如小车、魔方等                    |