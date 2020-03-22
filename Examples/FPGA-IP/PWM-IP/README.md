# PWM-IP使用介绍

## IP核介绍

PWM驱动IP核，提供了频率、占空比两个设定参数。

### PWM驱动模块构成

构成如下:

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
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz      | 100MHz的时钟信号 |
| 输入信号 | Freq            | 设定的PWM频率       |
| 输入信号 | Duty            | 设定的PWM占空比       |
| 输入信号 | Rst             | 复位信号，低电平复位       |
| 输入信号 | En              | 使能信号，高电平有效       |
| 输出信号 | PWM             | 输出的PWM信号     |


## 使用说明

由于PWM驱动的时钟信号为100MHz,那么所产生的PWM波的频率不能超过100MHz。


