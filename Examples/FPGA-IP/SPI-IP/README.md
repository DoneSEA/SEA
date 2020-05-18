# SPI-IP 简介

SPI的驱动程序IP内核仅提供通信主机的0模式。

SPI通信的主机在读取和写入数据序列的过程中有4种模式。 它由CPOL和CPHA的组合表示。

* CPOL：时钟的极性，在通信过程中分为空闲时间和通信时间。 数据传输前后SCK的空闲状态为高电平，则CPOL为1，否则为0。
* CPHA：时钟的相位。

SPI的四种模式如下：
* 模式0：CPOL = 0，CPHA = 0
* 模式1：CPOL = 0，CPHA = 1
* 模式2：CPOL = 1，CPHA = 0
* 模式3：CPOL = 1，CPHA = 1

## SPI驱动IP核的组成

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

### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_100MHz      | 100MHz的时钟信号 |
| input | Rst             | 复位信号，低电平有效      |
| input | En              | 使能信号，高电平有效      |
| input | MISO            | 主机读取从机数据或信息的通道    |
| input | Data            | 需要传输的数据       |
| output | SCK             | SPI时钟信号     |
| output | MOSI            | 主机发送指令或数据给从机的通道     |
| output | CS              | 片选信号，高电平选中             |
| output | ACK             | 应答信号，上升沿代表发送或接收完成     |


## 使用说明

SPI驱动IP核的使用案例可以在[Examples](/Examples)中找到，例如[SPI_Demo](/Examples/FPGA/2.Community-Interface/SPI)。


