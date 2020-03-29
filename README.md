# SEA

This repository is used to store official cases of SEA boards and provide communication.

![](/Images/SEA.jpg)

## Official Cases

The official cases include the Hello World part, the Examples (Basic Cases) part, and the Demos (System Cases) part currently.

### Hello World

 The Hello World part provides blank project of SEA board, including ESP32 part and FPGA part.

| Number | Property | Case Name                                              | Discription                                |
| ---- | ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | ESP32 | [HelloWorld-Arduino](/Hello-World/ESP32/Arduino-IDE)         | Project written in C based on the Arduino IDE platform    |
| 2    | ESP32 | [HelloWorld-MicroPython](/Hello-World/ESP32/MicroPython)    | Project based on MicroPython platform, written in MicroPython language       |
| 3    | FPGA | [HelloWorld-Verilog](/Hello-World/FPGA/Verilog)              | Pure hard core, Vivado project written in Verilog language     |
| 4    | FPGA | [HelloWorld-MicroBlaze](/Hello-World/FPGA/MicroBlaze)        | Pure soft core, Vivado and Xilinx SDK project written in C language       |

### Examples

The Examples part provides the basic cases of the SEA board, including the ESP32 part,the FPGA part, and the IP core of the FPGA.

#### ESP32

To be added......

#### FPGA

| Number | Case Name                                                  | Discription                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Digital-Circuits](/Examples/FPGA/1.Digital-Circuits)        | Digital circuit cases, including three cases: combination logic, sequential logic, and state machine        |
| 2    | [Community-Interface](/Examples/FPGA/2.Community-Interface)  | Communication interface cases, including cases of SPI, IIC, UART, etc.    |
| 3    | [IO-Interface](/Examples/FPGA/3.IO-Interface)                | Common IO interface cases, including cases of LED, PWM generation, etc.       |
| 4    | [Module-Interface](/Examples/FPGA/4.Module-Interface)        | Module interface cases, including cases of on-board modules such as ADC, DAC, HDMI, MIPI camera, gyroscope, etc.  |
| 5    | [Data-Interface](/Examples/FPGA/5.Data-Interface)            | Data interface cases, including basic data interactions in FPGA, such as BRAM, ROM,etc.         |
| 6    | [Extension-Interface](/Examples/FPGA/6.Extension-Interface)  | Expansion interface cases, including cases used by expansion boards, such as digital tubes, joysticks, Bluetooth, etc.           |

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