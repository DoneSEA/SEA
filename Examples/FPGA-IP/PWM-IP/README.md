# PWM-IP简介

PWM驱动IP内核并提供频率和占空比的两个设置参数。

## PWM驱动IP核的组成

```c
module Driver_PWM(
    input clk_100MHz,
    input [31:0]Freq,
    input [6:0]Duty,
    input Rst,
    input En,
    output reg PWM
    );
```
### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_100MHz      | 100MHz的时钟信号 |
| input | Freq            | 设置PWM的频率       |
| input | Duty            | 设置PWM的占空比       |
| input | Rst             | 复位信号，低电平有效       |
| input | En              | 使能信号，高电平有效       |
| output | PWM             | 输出PWM信号     |

## 使用说明

由于PWM驱动的时钟信号为100MHz，因此产生的PWM波的频率不能超过100MHz。相关的使用案例可以在[Examples](/Examples)中找到，例如[PWM_Demo](/Examples/FPGA/3.IO-Interface/PWM)。


