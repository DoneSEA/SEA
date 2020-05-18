# Mini-HDMI-IP简介

HDMI驱动程序IP内核为两个视频信号720p@60Hz和1280p@60Hz提供HDMI驱动器。

在IP文件夹中，除了HDMI驱动程序IP内核外，还提供了官方的rgb2dvi IP内核来连接驱动程序和最终的HDMI数据电缆。

## Mini-HDMI驱动组成

```c
module Driver_HDMI(
    input clk,   
    input Rst,    
    input Video_Mode,    
    input [23:0]RGB_In,    
    output [23:0]RGB_Data,    
    output reg RGB_HSync=0,    
    output reg RGB_VSync=0,    
    output reg RGB_VDE=0,    
    output reg [11:0]Set_X=0,    
    output reg [11:0]Set_Y=0    
    );
```
### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk             | HDMI系统时钟, 720p@60Hz图像要求为74.25MHz, 1080p@60Hz要求为148.5MHz |
| input | Rst             | 复位信号,低电平youxiao       |
| input | Video_Mode      | 视频模式, 0 模式-1080p@60Hz, 1 模式-720p@60Hz       |
| input | RGB_In          | 需要被传输的RGB数据     |
| output | RGB_Data        | 需要被传输的RGB数据     |
| output | RGB_HSync       | 视频传输行同步信号，高电平有效     |
| output | RGB_VSync       | 视频传输场同步信号，高电平有效     |
| output | RGB_VDE         | 视频传输有效信号，高电平有效       |
| output | Set_X           | 当前图像的X轴坐标,水平方向，左边为零点    |
| output | Set_Y           | 当前图像的Y轴坐标,竖直方向，上边为零点     |


## 使用说明

Mini HDMI的驱动IP核的使用案例，可以在[Examples](/Examples)中找到，例如[HDMI_Demo](/Examples/FPGA/4.Module-Interface/HDMI-Interface)。


