# UART-IP简介

Driver IP core of UART provides baud rate setting parameters, and communication modes for receiving and sending.

### Composition of UART Driver Module

The module configuration is as follows:

```c
module Driver_UART(
    input clk_100MHz,
    input Rst,
    input En_Rx,
    input En_Tx,
    input [30:0]Baud_Rate,
    input Rx,
    input [7:0]Tx_Data,
    output Tx,
    output [7:0]Rx_Data,
    output Rx_ACK,
    output Tx_ACK
    );
```
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_100MHz      | 100MHz clock signal |
| input | Rst             | Reset signal, active low       |
| input | En_Rx           | Receive enable signal, active high       |
| input | En_Tx           | Send enable signal, active high       |
| input | Baud_Rate       | Baud rate       |
| input | Rx              | Receive signal pin       |
| input | Tx_Data         | Data to be sent       |
| output | Tx              | Send signal pin     |
| output | Rx_Data         | Received data     |
| output | Rx_ACK          | Receive interrupt signal, and rising edge means received signal     |
| output | Tx_ACK          | Send interrupt signal and rising edge represents the completion of sending     |



## Using Instructions

This IP core can find the corresponding use case [HDMI_Demo](/Examples/FPGA/2.Community-Interface/UART) in [Examples](/Examples).


