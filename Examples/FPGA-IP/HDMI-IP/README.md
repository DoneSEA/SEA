# HDMI-IP使用介绍

## IP核介绍

HDMI驱动IP核，提供了720p@60Hz与1280p@60Hz两种视频信号的HDMI驱动。

### HDMI驱动模块构成

构成如下:

```c
module Driver_HDMI(
    input clk,                          //Clock
    input Rst,                          //Reset signal, low reset
    input Video_Mode,                   //Video format,0 is 1920*1080@60Hz,1 is 1280*720@60Hz
    input [23:0]RGB_In,                 //Input data
    output [23:0]RGB_Data,              //Output Data
    output reg RGB_HSync=0,            //Line signal
    output reg RGB_VSync=0,            //Field signal
    output reg RGB_VDE=0,              //Data valid signal
    output reg [11:0]Set_X=0,          //Image coordinate X
    output reg [11:0]Set_Y=0           //Image coordinate Y
    );
```
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk             | HDMI的系统时钟，720p@60Hz图像需要74.25MHz，1080p@60Hz图像需要148.5MHz |
| 输入信号 | Rst             | 复位信号，低电平复位       |
| 输入信号 | Video_Mode      | 视频模式，0模式-1080p@60Hz，1模式-720p@60Hz       |
| 输入信号 | RGB_In          | RGB数据，需要传输的数据       |
| 输出信号 | RGB_Data        | RGB数据，需要传输的数据     |
| 输出信号 | RGB_HSync       | 视频传输行同步信号，高电平有效     |
| 输出信号 | RGB_VSync       | 视频传输场同步信号，高电平有效     |
| 输出信号 | RGB_VDE         | 视频传输有效信号，高电平有效     |
| 输出信号 | Set_X           | 当前X轴坐标，横向，左边为原点     |
| 输出信号 | Set_Y           | 当前Y轴坐标，纵向，上边为原点     |


## 使用说明

本IP核在[Examples](/Examples)中可以找到对应的使用案例[HDMI_Demo](/Examples/FPGA/4.Module-Interface/HDMI-Interface)。


