# Image-Process-IP Series introduction

## IP Core Introduction

Image processing series IP cores provide four types of IP cores: RGB to grayscale, RGB to HSV, HSV to RGB, and edge detection.

## Composition of RGB to grayscale module

This module uses the conversion formula Gray = x · R + y · G + z · B for conversion.

The traditional conversion method has lower accuracy. Here, a binary shift method is used instead of decimal to reduce the loss of accuracy.

This module provides a total of 20 gray resolutions with a total of 1-20 bits.

The module configuration is as follows:

```c
module RGB_To_Gray(
    input [7:0]RGB_Data_R,         
    input [7:0]RGB_Data_G,  
    input [7:0]RGB_Data_B,  
    input [4:0]Accuracy_Num,  
    output [7:0]Gray_Data   
    );
```
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | RGB_Data_R      | R channel value needed to be converted |
| input | RGB_Data_G      | G channel value needed to be converted       |
| input | RGB_Data_B      | B channel value needed to be converted       |
| input | Accuracy_Num    | Precision digits: 1-20 bit, the excess part is calculated as 20 digits, the lower part is calculated as 1 digit       |
| output | Gray_Data      | Grayscale data output after conversion     |

## Composition of RGB to HSV module

RGB to HSV module uses the conversion formula of RGB to HSV for conversion.

As the general conversion method normalizes the three channels of HSV data to 0-1, the calculation on the FPGA will cause a loss of accuracy.

Here, no normalization is performed and the original value is maintained.

The module configuration is as follows:

```c
module RGB_To_HSV(
    input clk_Image_Process,
    input Rst,
    input [7:0]RGB_Data_R,
    input [7:0]RGB_Data_G,
    input [7:0]RGB_Data_B,
    output reg[8:0]HSV_H,
    output reg[7:0]HSV_S,
    output reg[7:0]HSV_V,
    output [2:0]Delay_Num
    );
```

### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_Image_Process | Clock signal |
| input | Rst             | Reset signal, active low       |
| input | RGB_Data_R      | R channel value needed to be converted |
| input | RGB_Data_G      | G channel value needed to be converted       |
| input | RGB_Data_B      | B channel value needed to be converted       |
| output | HSV_H           | H channel data output after conversion     |
| output | HSV_S           | S channel data output after conversion     |
| output | HSV_V           | V channel data output after conversion     |
| output | Delay_Num       | Since the conversion process uses division, this is the number of clocks for the output delay     |

## Composition of HSV to RGB module

HSV转RGB模块，利用HSV转RGB的转换公式进行转换。

转换公式如下：

![](/Examples/Images/HSV2RGB-IP.png)

构成如下:

```c
module HSV_To_RGB(
    input clk_Image_Process,
    input Rst,
    input [8:0]HSV_Data_H,
    input [7:0]HSV_Data_S,
    input [7:0]HSV_Data_V,
    output [7:0]RGB_Data_R,
    output [7:0]RGB_Data_G,
    output [7:0]RGB_Data_B,
    output [2:0]Delay_Num
    );
```

### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_Image_Process | 时钟信号 |
| 输入信号 | Rst             | 复位信号，低电平复位       |
| 输入信号 | HSV_Data_H      | 需要转换的H通道值 |
| 输入信号 | HSV_Data_S      | 需要转换的S通道值       |
| 输入信号 | HSV_Data_V      | 需要转换的V通道值       |
| 输出信号 | RGB_Data_R      | 转换后输出的R通道数据     |
| 输出信号 | RGB_Data_G      | 转换后输出的G通道数据     |
| 输出信号 | RGB_Data_B      | 转换后输出的B通道数据     |
| 输出信号 | Delay_Num       | 转换过程用到除法，这里输出延时的时钟数     |

## 边缘检测模块构成

边缘检测模块，利用Sobel算子对灰度图像进行边缘检测。

Sobel算子公式如下：

![](/Examples/Images/Edge-Check-IP.png)


其中f(a,b), 表示图像(a,b)点的灰度值。再由Gx和Gy求出▽f，如果▽f大于某一阈值，则认为点(x,y)为边缘点。

构成如下:

```c
module Edge_Check(
    input clk_Image_Process,
    input Rst,
    input RGB_DE,
    input [7:0]Gray_Data,
    input [7:0]Gray_Gate,
    output [2:0]Delay_Num,
    output [23:0]RGB_Data
    );
```

### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_Image_Process | 时钟信号 |
| 输入信号 | Rst               | 复位信号，低电平复位       |
| 输入信号 | RGB_DE            | 图像数据有效信号，高电平有效 |
| 输入信号 | Gray_Data         | 灰度数据       |
| 输入信号 | Gray_Gate         | 灰度阈值       |
| 输出信号 | Delay_Num         | 转换过程用到除法，这里输出延时的时钟数     |
| 输出信号 | RGB_Data          | 边缘检测输出的二值化RGB数据     |

## 使用说明

本IP核在[Examples](/Examples)中可以找到对应的使用案例[Image_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface)。


