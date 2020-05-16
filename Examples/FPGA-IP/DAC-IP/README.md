# DAC-IP简介

板载DAC模块的驱动IP核，包括一个地址生成器模块，一个DAC数据输出模块和一个数据存储模块。 DAC驱动IP核预设有三个输出波形--矩形波、正弦波、三角波，可以在函数发生器中使用。

![](/Examples/Images/DAC-IP.png)

## 地址生成器模块

地址生成器模块使用给定的相位和目标频率（此处设置为1kHz），将其转换为相位控制字（PWORD）和频率控制字（FWORD）。FWORD确定地址生成器的时钟频率，而PWORD确定地址生成器每个周期累积的值。

## 数据存储模块

数据存储模块使用提供的Matlab代码生成三角波，正弦波和矩形波的coe数据，并预先存储在FPGA的ROM中。当进行DAC转换时，选择波形输出。

## DAC驱动模块构成

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
### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_100MHz  | 100MHz的时钟                                                   |
| input | clk_DAC     | 板载DAC模块的同步时钟信号                                        |
| input | DAC_En      | 板载DAC模块的使能信号，高电平有效                                |
| input | Wave_Mode   | 波形选择，1模式代表正弦波，2模式代表三角波，3模式代表方波          |
| input | Phase       | 相位信号，波形相位范围为0-360                                   |
| output | DAC_Din     | DAC数据线，单总线输出                                         |
| output | DAC_Sync    | DAC数据有效信号，低电平有效  |

## 使用说明

本IP核仅供板载DAC7311模块使用，如需要换成驱动其他型号的DAC模块，需要按照对应的数据手册，进行本IP核的修改。对应的使用案例，可以在[Examples](/Examples)找到，比如[DAC_Demo](/Examples/FPGA/4.Module-Interface/DAC-Interface)。

