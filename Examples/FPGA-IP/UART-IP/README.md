# UART-IP简介

UART的驱动IP核提供波特率设置参数以及用于接收和发送的通信模式。

## UART驱动IP核的组成

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
### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
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



## 使用说明

UART驱动IP核的使用案例，可以在[Examples](/Examples)中找到,例如[HDMI_Demo](/Examples/FPGA/2.Community-Interface/UART)。


