# FPGA-IP

FPGA-IP部分，用来存储SEA Board开发板板载FPGA的开源IP，基本包括了FPGA的基础性IP，以及板载模块的使用IP。

## 内容简介

FPGA的开源IP库，提供了Vivado版本的库文件，以及相应的开源工程文件，方便开发者使用及二次开发。

本部分的结构遵循下面的格式:

  > XXX-IP
  > > Driver_XXX   
  > > IP   

## 仓库组成

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

