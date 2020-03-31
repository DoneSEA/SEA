# Frequency-Divider-IP Instructions

## IP Core Introduction

This frequency divider IP core is adjusted based on the principle of a single odd frequency divider and a single even frequency divider.

A single odd or even frequency divider generally uses half-cycle or half-cycle minus 1 as the jump point of the clock for frequency division. By comparing the two clock waveforms, it can be found that according to the signs from the even and odd numbers, the odd and even frequency divisions can be combined together.

### Module Composition

The module structure diagram is as follows:

```c
module Clk_Division(
   input clk_100MHz,
   input [30:0] clk_mode,
   output clk_out
   );
```
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_100MHz  | 100MHz clock |
| input | clk_mode    | Division numbers       |
| output | clk_out     | Output clock     |

## Using Instructions

An optimized version of this IP core will be followed in the future, and many use cases can be found in [Examples](/Examples).

