# 通信接口案例

通信接口案例，目前提供SPI案例与UART案例。

## SPI案例

目前提供[SPI主机案例](/Examples/FPGA/2.Community-Interface/SPI/SPI_Demo)，并配合其中的[Arduino从机案例](/Examples/FPGA/2.Community-Interface/SPI/SPI-Arduino/SPI_Slave)，可以实现数据单向传输。另外也提供了[Arduino主机案例](/Examples/FPGA/2.Community-Interface/SPI/SPI-Arduino/SPI_Master)。

## UART案例

目前支持双向传输，案例将接收到的数据传输回去。

### 案例结构

| 序号 | 名称                                                         | 描述                                       |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [SPI](/Examples/FPGA/2.Community-Interface/SPI)   | SPI案例  |
| 2    | [UART](/Examples/FPGA/2.Community-Interface/UART)   | UART案例  |