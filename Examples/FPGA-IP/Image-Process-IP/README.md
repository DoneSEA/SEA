# Image-Process-IP系列简介

图像处理系列IP内核提供了四种IP核：RGB转灰度，RGB转HSV，HSV转RGB，以及边缘检测。

## RGB转灰度模块

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

The HSV to RGB module uses the HSV to RGB conversion formula for conversion.

The conversion formula is as follows:

![](/Examples/Images/HSV2RGB-IP.png)

The module configuration is as follows:

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

### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_Image_Process |  Clock signal |
| input | Rst             | Reset signal, active low       |
| input | HSV_Data_H      | H channel value needed to be converted |
| input | HSV_Data_S      | S channel value needed to be converted       |
| input | HSV_Data_V      | V channel value needed to be converted       |
| output | RGB_Data_R      | R channel data output after conversion     |
| output | RGB_Data_G      | G channel data output after conversion     |
| output | RGB_Data_B      | B channel data output after conversion     |
| output | Delay_Num       | Since the conversion process uses division, this is the number of clocks for the output delay     |

## Composition of edge detection module

The edge detection module uses the Sobel operator to perform edge detection on grayscale images.

The Sobel operator formula is as follows:

![](/Examples/Images/Edge-Check-IP.png)


Where f (a, b), represents the gray value of the image (a, b) point. Then find ▽ f from Gx and Gy. If ▽ f is greater than a certain threshold, the point (x, y) is considered as an edge point.

The module configuration is as follows:

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

### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_Image_Process | Clock signal |
| input | Rst               | Reset signal, active low       |
| input | RGB_DE            | Image data effective signal, high level effective |
| input | Gray_Data         | Grayscale data       |
| input | Gray_Gate         | Grayscale threshold       |
| output | Delay_Num         | Since the conversion process uses division, this is the number of clocks for the output delay     |
| output | RGB_Data          | Binary RGB data output by edge detection     |

## Using Instructions

This IP core can find the corresponding use case [Image_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface) in [Examples](/Examples).


