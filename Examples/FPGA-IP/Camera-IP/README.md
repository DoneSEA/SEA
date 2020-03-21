# Frequency-Divider-IP使用介绍

## IP核介绍

分频器IP核，基于单个奇数分频器和单个偶数分频器的原理，进行调整。

单个奇数或偶数分频器，一般使用半周期或半周期-1，作为时钟的跳变点，进行分频。通过对比两种时钟波形，可以发现，根据奇偶数来的标志，可以将奇数分频和偶数分频衔接在一起。

### 分频器模块构成

构成如下:

```c
module Clk_Division(
   input clk_100MHz,
   input [30:0] clk_mode,
   output clk_out
   );
```
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz  | 100MHz的时钟 |
| 输入信号 | clk_mode    | 分频数       |
| 输出信号 | clk_out     | 输出时钟     |
## 使用说明

本IP核仅配合板载ADC模块(ADC1173)使用，在[Examples](/Examples)中可以找到对应的使用案例[ADC_Demo](/Examples/FPGA/4.Module-Interface/ADC-Interface)。

