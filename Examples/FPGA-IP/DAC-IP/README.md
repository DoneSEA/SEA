# DAC-IP Instructions

## IP Core Introduction

Driver IP core of onboard DAC module consists of an address generator, a DAC data bus output, and a data storage module. This DAC driver is preset with three output waveforms and can be used in a function generator.

### Module Composition

The address generator uses the given phase and target frequency (here set to 1kHz) to convert it into a phase control word (PWORD) and a frequency control word (FWORD). FWORD determines the clock frequency of the address generator, and PWORD determines The value accumulated by the address generator per cycle.

The data storage module uses the Matlab code provided in the project to generate the coe data of triangle wave, sine wave, and rectangular wave, and stores it in the ROM of FPGA in advance. When performing a DAC conversion, select a waveform output.

The module structure diagram is as follows:

![](/Examples/Images/DAC-IP.png)


### DAC Driver Configuration

The driver configuration is as follows:

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
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_100MHz  | 100MHz clock             |
| input | clk_DAC     | DAC chip's synchronization clock signal           |
| input | DAC_En      | DAC chip's enable signal, active high    |
| input | Wave_Mode   | Wave mode, 1 mode-sine wave, 2 mode-triangle wave, 3 mode-square wave   |
| input | Phase       | Phase signal, given waveform offset phase 0-360   |
| output | DAC_Din     | DAC data line, single bus output   |
| output | DAC_Sync    | DAC data valid signal, active low  |

## Using Instructions

This IP core is only used with the on-board DAC chip (DAC7311). The corresponding use case [DAC_Demo](/Examples/FPGA/4.Module-Interface/DAC-Interface) can be found in [Examples](/Examples).

