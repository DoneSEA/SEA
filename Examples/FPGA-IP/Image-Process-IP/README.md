# Image-Process-IP系列介绍

## IP核介绍

图像处理系列IP核，提供了RGB转灰度、RGB转HSV、HSV转RGB、边缘检测四种IP核。

## RGB转灰度模块构成

RGB转灰度模块，利用转换公式Gray=x·R+y·G+z·B，进行转换。

传统的转换方式，精度较低，这里采用二进制移位方式代替小数，减小精度损失。

本模块总共提供1-20位共计20种精度的灰度转换。

构成如下:

```c
module RGB_To_Gray(
    input [7:0]RGB_Data_R,              //Pixel data R
    input [7:0]RGB_Data_G,              //Pixel data G
    input [7:0]RGB_Data_B,              //Pixel data B
    input [4:0]Accuracy_Num,            //Grayscale precision digits
    output [7:0]Gray_Data               //Output grayscale data
    );
```
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | RGB_Data_R      | 需要转换的R通道值 |
| 输入信号 | RGB_Data_G      | 需要转换的G通道值       |
| 输入信号 | RGB_Data_B      | 需要转换的B通道值       |
| 输入信号 | Accuracy_Num    | 精度位数，1-20，超出部分按照20位计算，低于部分按照1位计算       |
| 输出信号 | Gray_Data       | 转换后输出的灰度数据     |

## RGB转HSV模块构成

RGB转HSV模块，利用RGB转HSV的转换公式进行转换。

由于一般转换方式，将HSV三个通道数据，归一化到0-1之间，在FPGA上运算会造成精度损失。

这里，不进行归一化，保持原值。

构成如下:

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

### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_Image_Process | 时钟信号 |
| 输入信号 | Rst             | 复位信号，低电平复位       |
| 输入信号 | RGB_Data_R      | 需要转换的R通道值 |
| 输入信号 | RGB_Data_G      | 需要转换的G通道值       |
| 输入信号 | RGB_Data_B      | 需要转换的B通道值       |
| 输出信号 | HSV_H           | 转换后输出的H通道数据     |
| 输出信号 | HSV_S           | 转换后输出的S通道数据     |
| 输出信号 | HSV_V           | 转换后输出的V通道数据     |
| 输出信号 | Delay_Num       | 转换过程用到除法，这里输出延时的时钟数     |

## HSV转RGB模块构成

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


