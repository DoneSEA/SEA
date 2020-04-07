# HDMI-IP Instructions

## IP Core Introduction

The HDMI driver IP core provides HDMI drivers for two video signals, 720p@60Hz and 1280p@60Hz.

In the IP folder, in addition to the HDMI driver IP core, an official rgb2dvi IP core is also provided to connect the driver and the final HDMI data cable.

### Composition of HDMI Driver Module

The module configuration is as follows:

```c
module Driver_HDMI(
    input clk,   
    input Rst,    
    input Video_Mode,    
    input [23:0]RGB_In,    
    output [23:0]RGB_Data,    
    output reg RGB_HSync=0,    
    output reg RGB_VSync=0,    
    output reg RGB_VDE=0,    
    output reg [11:0]Set_X=0,    
    output reg [11:0]Set_Y=0    
    );
```
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk             | HDMI system clock, 720p@60Hz image requires 74.25MHz, 1080p@60Hz image requires 148.5MHz |
| input | Rst             | Reset signal, active low       |
| input | Video_Mode      | Video mode, 0 mode-1080p@60Hz, 1 mode-720p@60Hz       |
| input | RGB_In          | RGB data, data to be transmitted       |
| output | RGB_Data        | RGB data, data to be transmitted     |
| output | RGB_HSync       | Video transmission line synchronization signal, high level effective     |
| output | RGB_VSync       | Video transmission field synchronization signal, high level effective     |
| output | RGB_VDE         | Video transmission effective signal, high level effective     |
| output | Set_X           | Current X-axis coordinate, horizontal, left is the origin     |
| output | Set_Y           | The current Y-axis coordinate, vertical, and the top is the origin     |


## Using Instructions

This IP core can find the corresponding use case [HDMI_Demo](/Examples/FPGA/4.Module-Interface/HDMI-Interface) in [Examples](/Examples).


