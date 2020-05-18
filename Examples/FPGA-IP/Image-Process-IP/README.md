# Image-Process-IP系列简介

图像处理系列IP内核提供了四种IP核：RGB转灰度，RGB转HSV，HSV转RGB，以及边缘检测。

## RGB转灰度模块

RGB转灰度模块使用转换公式Gray = x·R + y·G + z·B进行转换。

传统的转换方法精度较低。在此，使用二进制移位方法代替十进制数以减少精度损失。模块提供总共20种灰度分辨率，共1-20位。

```c
module RGB_To_Gray(
    input [7:0]RGB_Data_R,         
    input [7:0]RGB_Data_G,  
    input [7:0]RGB_Data_B,  
    input [4:0]Accuracy_Num,  
    output [7:0]Gray_Data   
    );
```
### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | RGB_Data_R      | 需要被转换的R通道数据 |
| input | RGB_Data_G      | 需要被转换的G通道数据       |
| input | RGB_Data_B      | 需要被转换的B通道数据       |
| input | Accuracy_Num    | 数据精度：1-20种精度，其他部分按照20位精度计算      |
| output | Gray_Data      | 转换后的灰度数据输出     |

## RGB转HSV模块

RGB到HSV模块使用RGB到HSV的转换公式进行转换。

由于一般的转换方法会将HSV数据的三个通道归一化为0-1，因此FPGA上的计算将导致精度损失。

这里，我们没有进行归一化，而是保持了原始值。

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

### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_Image_Process | 时钟信号 |
| input | Rst             | 复位信号，低电平有效      |
| input | RGB_Data_R      | 需要被转换的R通道数据 |
| input | RGB_Data_G      | 需要被转换的G通道数据       |
| input | RGB_Data_B      | 需要被转换的B通道数据       |
| output | HSV_H           | 转换后的H通道数据输出     |
| output | HSV_S           | 转换后的S通道数据输出     |
| output | HSV_V           | 转换后的V通道数据输出     |
| output | Delay_Num       | 由于转换过程中用到除法，那么需要给输出进行延时，这里输出的是延时数目     |

## HSV转RGB模块

HSV转RGB模块使用HSV到RGB的转换公式进行转换。

转换公式，如下图所示：

![](/Examples/Images/HSV2RGB-IP.png)

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

### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_Image_Process |  时钟信号 |
| input | Rst             | 复位信号，低电平有效       |
| input | HSV_Data_H      | 需要被转换的H通道数据 |
| input | HSV_Data_S      | 需要被转换的S通道数据       |
| input | HSV_Data_V      | 需要被转换的V通道数据       |
| output | RGB_Data_R      | 转换后的R通道数据输出     |
| output | RGB_Data_G      | 转换后的G通道数据输出     |
| output | RGB_Data_B      | 转换后的B通道数据输出     |
| output | Delay_Num       | 由于转换过程中用到除法，那么需要给输出进行延时，这里输出的是延时数目     |

## 边缘检测模块

边缘检测模块使用Sobel算子对灰度图像进行边缘检测。

Sobel算子的计算公式如下：

![](/Examples/Images/Edge-Check-IP.png)

其中f（a，b）代表图像（a，b）点的灰度值。 然后从Gx和Gy中找到▽f。 如果▽f大于某个阈值，则将点（x，y）视为边缘点。

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

### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_Image_Process | 时钟信号 |
| input | Rst               | 复位信号，低电平有效       |
| input | RGB_DE            | 图像数据有效信号，高电平有效 |
| input | Gray_Data         | 灰度数据       |
| input | Gray_Gate         | 灰度阈值       |
| output | Delay_Num         | 由于转换过程中用到除法，那么需要给输出进行延时，这里输出的是延时数目     |
| output | RGB_Data          |边缘检测后输出的二值化RGB数据     |

## 使用说明

图像处理系列IP核的相关使用案例，可以在[Examples](/Examples)中找到，例如[Image_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface)。


