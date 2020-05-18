# 通信接口案例

通信接口案例目前提供SPI和UART。

## SPI

这个部分目前包[SPI Master](/Examples/FPGA/2.Community-Interface/SPI/SPI_Demo),配合 [Arduino SPI Slave](/Examples/FPGA/2.Community-Interface/SPI/SPI-Arduino/SPI_Slave)来实现数据传输。除此之外，还提供了[Arduino SPI Master](/Examples/FPGA/2.Community-Interface/SPI/SPI-Arduino/SPI_Master)。

## UART

UART目前支持双向传输，案例中将接收到的数据发回。

### 通信接口案例组成

| 序号 | 案例名称                                                  | 描述                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [SPI](/Examples/FPGA/2.Community-Interface/SPI)   | SPI  |
| 2    | [UART](/Examples/FPGA/2.Community-Interface/UART)   | UART  |