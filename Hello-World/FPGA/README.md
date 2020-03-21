本仓库用于存放SEA_S7 Board参考案例，请为每个项目新建一个目录，目录内包含可执行文件、使用手册和工程源代码。目录结构如下:
  > Project_Name
  > > Readme (project Introduction, software interface definition)  
  > > FPGA Bitstream   
  > > ESP32 source code and executable file  
  > > Arduino source code and executable file   



| 序号 | 名称                                                         | 描述                                       |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [MIPI-In-HDMI-Out](/MIPI-In-HDMI-Out)                        | MIPI摄像头输入与HDMI输出Vivado工程         |
| 2    | [Color-Recognition-and-Object-Traking](/Color-Recognition-and-Object-Traking) | 颜色识别与物体追踪案例                     |
| 3    | [spi2gpio](/spi2gpio)                                        | 为Arduino提供GPIO/UART/ADC/DAC/RGB-LED扩展 |
| 4    | [ESP32-QSPI-FPGA-Waveform-Generator](/ESP32-QSPI-FPGA-Waveform-Generator) | ESP32控制的信号发生器案例                  |
| 5    | [Arbitrary_Waveform_Generator_For_Arduino](/Arbitrary_Waveform_Generator_For_Arduino) | 信号发生器案（需要Arduino配置）            |
| 6    | [Misc-Peripherals-Control-Of-FPGA](/Misc-Peripherals-Control-Of-FPGA) | 板载LED、拨码开关、ADC与DAC参考案例        |
| 7    | [2-D-Geometric-Shape-Recognition](/2-D-Geometric-Shape-Recognition) | 图形识别案例（三角形、圆形与正方形识别）   |
| 8    | [AES-Algorithm](/AES-Algorithm)                              | AES加解密算法在FPGA内的实现                |
| 9    | [Numeral-Recognition](https://github.com/liuweistrong/Digital-Recognition) | 数字字符识别案例                           |
| 10   | [On-Board-Gyroscope](/On-Board-Gyroscope)                    | 板载陀螺仪案例                             |
| 11   | [PID-Algorithm-On-FPGA](/PID-Algorithm-On-FPGA)              | PID算法在FPGA内的实现                      |
| 12   | [esp32-aws](https://github.com/wutianze/esp32-aws-xilinx.git) | SEA board使用 AWS GreenGrass IoT平台案例   |

欢迎大家基于SEA Board开发应用，并提交pull request贡献案例到本仓库。    

为便于统一接口，请参考 [SEA Board -Arduino FPGA Shield Software Interface Definition](SEA-Board-Arduino-FPGA-Shield-Software-Interface-Definition.md)来为Arduino主控扩展应用。

