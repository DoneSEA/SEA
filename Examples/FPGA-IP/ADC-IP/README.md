# ADC-IP使用介绍

## IP核介绍

ADC驱动IP核，由整数分频器模块、频率计算模块、数据存储模块组成。

### 模块构成

频率计算模块，通过设置上升沿触发阈值，利用对ADC采样得到的8位数据，进行脉冲检测，计算得到频率。

模块结构图如下：

![](/Examples/Images/ADC-IP.png)


### ADC驱动构成

驱动构成如下:

```c
module Driver_ADC(   
  input clk_100MHz,       //Clock   
  input clk_system,       //Clock reading signal   
  input Rst,              //Reset signal, low reset   
  input[7:0]ADC_Data,     //ADC sampling data   
  input[17:0]Read_Addr,   //Read signal address   
  input[7:0]Trigger_Gate, //Trigger threshold   
  output[17:0]Period,     //frequency   
  output clk_ADC,         //ADC clock   
  output ADC_En,          //ADC enable signal   
  output [7:0]ADC_Data_Out //Storage signal output   
  );
```
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz  | 100MHz的时钟             |
| 输入信号 | clk_system | 读取驱动内部缓存的时钟     |
| 输入信号 | Rst        | 复位信号，低电平复位       |
| 输入信号 | ADC_Data   | 数据信号，接ADC模块的对应引脚   |
| 输入信号 | Read_Addr  | 读取驱动内部缓存的地址   |
| 输入信号 | Trigger_Gate | 触发阈值,用以上升沿触发的电压设定,8位   |
| 输出信号 | Period     | 输出频率   |
| 输出信号 | clk_ADC    | ADC模块的同步时钟   |
| 输出信号 | ADC_En     | ADC模块的使能信号,高电平有效   |
| 输出信号 | ADC_Data_Out  | 驱动处理后的ADC模块数据输出   |

## 使用说明

本IP核仅配合板载ADC模块(ADC1173)使用，在[Examples](/Examples)中可以找到对应的使用案例[ADC_Demo](/Examples/FPGA/4.Module-Interface/ADC-Interface)。

