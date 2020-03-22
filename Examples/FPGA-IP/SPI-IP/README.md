# SPI-IP使用介绍

## IP核介绍

SPI驱动IP核，只提供通信主机的0模式。

SPI 通信的主机在读写数据时序的过程中，有 4 种模式。通过 CPOL 和 CPHA 的组合来表示。

* CPOL：时钟的极性，通信过程中分为空闲时刻和通信时刻，SCK 在数据发送前后的空闲状态是高电平，那么 CPOL为 1，否则为 0   
* CPHA：时钟的相位。 

SPI 的 4 种模式分别如下: 
* 模式 0：CPOL=0,CPHA=0   
* 模式 1：CPOL=0,CPHA=1   
* 模式 2：CPOL=1,CPHA=0   
* 模式 3：CPOL=1,CPHA=1   

### SPI驱动模块构成

构成如下:

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
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz      | 100MHz的时钟信号 |
| 输入信号 | Rst             | 复位信号，低电平复位       |
| 输入信号 | En              | 使能信号，高电平有效      |
| 输入信号 | MISO            | 主机读取从机的状态或者数据的通道       |
| 输入信号 | Data            | 需要传输的数据       |
| 输出信号 | SCK             | SPI时钟信号     |
| 输出信号 | MOSI            | 主机给从机发送指令或者数据的通道     |
| 输出信号 | CS              | 片选信号，高电平选中     |
| 输出信号 | ACK             | 中断信号，上升沿为发送或接收完毕     |


## 使用说明

本IP核在[Examples](/Examples)中可以找到对应的使用案例[SPI_Demo](/Examples/FPGA/2.Community-Interface/SPI)。


