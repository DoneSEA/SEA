# ADC-IP 简介

板载ADC模块的驱动IP核，由一个整数分频器模块、一个频率计算模块和一个数据存储模块组成。

![](/Examples/Images/ADC-IP.png)

## 频率计算模块

频率计算模块通过设置上升沿触发阈值，并对ADC采样而获得的8位数据来执行脉冲检测来计算频率。

## ADC驱动的模块构成

```c
module Driver_ADC(   
  input clk_100MHz,       
  input clk_system,        
  input Rst,             
  input[7:0]ADC_Data,    
  input[17:0]Read_Addr,      
  input[7:0]Trigger_Gate, 
  output[17:0]Period,     
  output clk_ADC,         
  output ADC_En,     
  output [7:0]ADC_Data_Out
  );
```
### 信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| Input       | clk_100MHz  | 100MHz时钟                                                     |
| Input       | clk_system  | 读取内部缓存的时钟                                              |
| Input       | Rst         | 复位信号，低电平复位                                            |
| Input       | ADC_Data    | 数据信号，绑定板载ADC模块的数据输出引脚                           |
| Input       | Read_Addr   | 需要读取的内部缓存地址                                           | 
| Input       | Trigger_Gate | 触发阈值，设置8位上升沿触发的阈值                                |
| output      | Period      | 输出的频率                                                      |
| output      | clk_ADC     | 板载ADC模块工作的同步时钟   |
| output      | ADC_En      | 板载ADC模块工作的使能信号，高电平有效   |
| output      | ADC_Data_Out | ADC驱动模块的数据输出   |

## 使用说明

本IP核仅供板载ADC1173模块使用，如需要换成驱动其他型号的ADC模块，需要按照对应的数据手册，进行本IP核的修改。对应的使用案例，可以在[Examples](/Examples)找到，比如[ADC_Demo](/Examples/FPGA/4.Module-Interface/ADC-Interface)。

