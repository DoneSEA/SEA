# UART-IP使用介绍

## IP核介绍

USRT驱动IP核，提供了波特率设定参数，以及接收、发送的通信模式。

### UART驱动模块构成

构成如下:

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
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz      | 100MHz的时钟信号 |
| 输入信号 | Rst             | 复位信号，低电平复位       |
| 输入信号 | En_Rx           | 接收使能信号，高电平有效       |
| 输入信号 | En_Tx           | 发送使能信号，高电平有效       |
| 输入信号 | Baud_Rate       | 波特率       |
| 输入信号 | Rx              | 接收信号引脚       |
| 输入信号 | Tx_Data         | 需要发送的数据       |
| 输出信号 | Tx              | 发送信号引脚     |
| 输出信号 | Rx_Data         | 接收到的数据     |
| 输出信号 | Rx_ACK          | 接收中断信号，上升沿代表接收到信号     |
| 输出信号 | Tx_ACK          | 发送中断信号，上升沿代表发送完毕     |



## 使用说明

本IP核在[Examples](/Examples)中可以找到对应的使用案例[HDMI_Demo](/Examples/FPGA/2.Community-Interface/UART)。


