# ADC-IP Instructions

## IP Core Introduction

Driver IP core of onboard ADC module consists of an integer divider module, a frequency calculation module, and a data storage module.

### Module Composition

The frequency calculation module calculates the frequency by setting a rising edge trigger threshold and using the 8-bit data obtained by sampling the ADC to perform pulse detection.

The module structure diagram is as follows:

![](/Examples/Images/ADC-IP.png)


### ADC Driver Configuration

The driver configuration is as follows:

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
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| Input       | clk_100MHz  | 100MHz clock             |
| Input       | clk_system  | Clock for reading internal cache     |
| Input       | Rst         | Reset signal, low reset       |
| Input       | ADC_Data    | Data signal, connected to the corresponding pin of the ADC chip   |
| Input       | Read_Addr   | Read the address of internal cache   |
| Input       | Trigger_Gate | Trigger threshold, used to set the voltage triggered by the rising edge, 8 bits   |
| output      | Period      | Output frequency   |
| output      | clk_ADC     | ADC chip's synchronous clock   |
| output      | ADC_En      | ADC chip's enable signal, active high   |
| output      | ADC_Data_Out | Data output of the driven ADC module   |

## Using Instructions

This IP core is only used with the on-board ADC chip (ADC1173). The corresponding using cases [ADC_Demo](/Examples/FPGA/4.Module-Interface/ADC-Interface) can be found in [Examples](/Examples).

