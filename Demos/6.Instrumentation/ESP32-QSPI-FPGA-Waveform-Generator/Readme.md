# 任意波形发生器通信协议

## 硬件连接
| FUNCTION  LOGIC | FPGA PIN | NET/ESP32 |
| ---------- | :-----------:  | :-----------: |
| qspi_clk | H14 | FPGA_QSPI_CLK  <-  ESP32_QSPI_CLK |
| qspi_cs | M13 | FPGA_QSPI_CS <-  ESP32_QSPI_CS |
| qspi_d3 | D13 | FPGA_QSPI_HD <-> ESP32_QSPI_HD |
| qspi_d2 | J13 | FPGA_QSPI_WP <-> ESP32_QSPI_WP |
| qspi_d1 | L14 | FPGA_QSPI_Q <-> ESP32_QSPI_Q |
| qspi_d0 | P2 | FPGA_QSPI_D <-> ESP32_QSPI_D |

FPGA 和 ESP32 通过QSPI进行通信，通信的硬件如上，信号通过开发板的DAC端产生。

## QSPI通信
在QSPI通信中，有六线用于通信(四线数据传输)，命令使用qspi_d0传输，地址和数据使用四线传输，如下图所示。最大QSPI时钟速度为40 MHz，地址为32bits(实际上使用的RAM地址只有8bits对应32位的最低8位)，数据为8位，dummy为4个QSPI通信时钟周期，采用传输模式0，时序方案按照时钟极性(CPOL)= 1、时钟相位(CPHA)= 1执行。  
**qspi_cs**为通信端口使能线，由QSPI主机控制。如图所示，因使用模式0，此线必须在传输起点变为低电平，传输终点变为高电平。  
**qspi_clk**为通信端口时钟，由QSPI主机(ESP32端)提供。无传输期间，qspi_clk为空闲低电平状态。  
**qspi_d**为通信数据输入输出端口。 qspi_clk下降沿时数据更新， qspi_clk上升沿时进行采样。

QSPI时序：
![image](https://i.screenshot.net/x6l4vhv)


## 寄存器
控制寄存器为QSPI对应FPGA端RAM地址0 的 8位寄存器 D[7:0]

| 地址 |  名称   | 类型 |                             描述                             |
| ---- | :-----: | :--: | :----------------------------------------------------------: |
| 0x00 | control | 输入 | **D[7:6]为控制波形：**   00：正弦波 01：方波 10：三角波 11：锯齿波 <br>**D[5:3]为控制幅度：** 000：幅度不变 001：原来幅度的1/2倍 010：原来幅度的1/4倍 011：原来幅度的1/8倍 100：幅度不变 101：原来幅度的2倍 110：原来幅度的4倍 111：原来幅度的8倍 <br>**D[1:0]为控制频率：** 00：频率不变 01：原来频率的2倍 10：原来频率的4倍 11：原来频率的8倍 |
