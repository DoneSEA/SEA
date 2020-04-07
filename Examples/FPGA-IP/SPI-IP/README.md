# SPI-IP Instructions

## IP Core Introduction

Driver IP core of SPI only provides the 0 mode of the communication host.

The host of SPI communication has 4 modes in the process of reading and writing data sequence. It is expressed by the combination of CPOL and CPHA.

* CPOL: The polarity of the clock, which is divided into idle time and communication time during the communication process. The idle state of SCK before and after data transmission is high, then CPOL is 1, otherwise it is 0.
* CPHA: The phase of the clock. 

The four modes of SPI are as follows:
* Mode 0：CPOL=0, CPHA=0   
* Mode 1：CPOL=0, CPHA=1   
* Mode 2：CPOL=1, CPHA=0   
* Mode 3：CPOL=1, CPHA=1   

### Composition of SPI Driver Module

The module configuration is as follows:

```c
module SPI_Master(
    input clk_100MHz,
    input Rst,
    input En,
    input MISO,
    input [7:0]Data,
    output SCK,
    output MOSI,   
    output reg CS=1,   
    output reg ACK=0   
);
```
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_100MHz      | 100MHz clock signal |
| input | Rst             | Reset signal, active low       |
| input | En              | Enable signal, active high      |
| input | MISO            | The channel for the master to read the status or data of the slave       |
| input | Data            | Data to be transferred       |
| output | SCK             | SPI clock signal     |
| output | MOSI            | The channel from which the master sends instructions or data to the slave     |
| output | CS              | Chip select signal, high level select     |
| output | ACK             | Interrupt signal, the rising edge is the end of sending or receiving     |


## Using Instructions

This IP core use case [SPI_Demo](/Examples/FPGA/2.Community-Interface/SPI) can be found in [Examples](/Examples).


