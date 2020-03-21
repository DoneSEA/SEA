# DAC-IP使用介绍

## IP核介绍

DAC驱动IP核，由地址产生器、DAC数据总线输出、数据存储模块组成。该DAC驱动，预置了三种输出波形，可应用在函数发生器。

### 模块构成

地址产生器，利用给定的相位和目标的频率(这里设定为1k)，转化为相位控制字(PWORD)和频率控制字(FWORD)，FWORD决定了地址产生器的时钟频率，PWORD决定了地址产生器每周期累加的值的大小。

数据存储模块，利用工程中提供的Matlab代码，生成三角波、正弦波、矩形波的coe数据，预置存储在FPGA的ROM中。当进行DAC转换时，选择一种波形输出。

模块结构图如下：

![](/Examples/Images/DAC-IP.png)


### DAC驱动构成

驱动构成如下:

```c
module Driver_DAC(
    input clk_100MHz,
    input clk_DAC,
    input DAC_En,
    input [1:0]Wave_Mode,
    input [8:0]Phase,
    output reg DAC_Din,
    output reg DAC_Sync
    );
```
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz  | 100MHz的时钟             |
| 输入信号 | clk_DAC     | DAC同步时钟信号           |
| 输入信号 | DAC_En      | DAC使能信号,高电平有效    |
| 输入信号 | Wave_Mode   | 波形模式,1模式-正弦波,2模式-三角波，3模式-方波   |
| 输入信号 | Phase       | 相位信号，给定波形偏置相位0-360   |
| 输出信号 | DAC_Din     | DAC数据线，单总线输出   |
| 输出信号 | DAC_Sync    | DAC数据有效信号,低电平有效   |

## 使用说明

本IP核仅配合板载DAC模块(DAC7311)使用，在[Examples](/Examples)中可以找到对应的使用案例[DAC_Demo](/Examples/FPGA/4.Module-Interface/DAC-Interface)。

