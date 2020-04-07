# PWM-IP Instructions

## IP Core Introduction

The PWM drives the IP core and provides two setting parameters for frequency and duty cycle.

### Composition of PWM Driver Module

The module configuration is as follows:

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
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_100MHz      | 100MHz clock signal |
| input | Freq            | Set PWM frequency       |
| input | Duty            | Set PWM duty cycle       |
| input | Rst             | Reset signal, active low       |
| input | En              | Enable signal, high level effective       |
| output | PWM             | Output PWM signal     |


## Using Instructions

Since the clock signal driven by the PWM is 100MHz, the frequency of the generated PWM wave cannot exceed 100MHz.


