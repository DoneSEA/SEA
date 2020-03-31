# IIC-IP Instructions

## IP Core Introduction

Driver IP core of IIC supports dual address register read and write, does not support continuous read and write.

The default setting of IIC transmission rate is 100kHz, and the parameter is SCL_SUM = 100M / 100k.

If you need to adjust the transmission rate, or adjust the working clock of the IIC, you need to adjust the SCL_SUM parameter of the IP core accordingly.

### Module Composition

The module structure diagram is as follows:

```c
module Driver_IIC(
    input clk, 
    input Rst,
    input   [7:0]Addr,
    input   [15:0]Reg_Addr,
    input   [7:0]Data,
    input   IIC_Write,
    input   IIC_Read,
    output  reg[7:0]IIC_Read_Data=0,
    output  IIC_Busy,
    input Reg_2Addr,        
    output  IIC_SCL,
    input   IIC_SDA_In,
    output reg SDA_Dir=0,  
    output reg SDA_Out=0   
    );
```
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk             | IIC working clock, default is 100MHz |
| input | Rst             | Reset signal, active low       |
| input | Addr            | Slave address       |
| input | Reg_Addr        | Register address       |
| input | Data            | Data transmitted by IIC      |
| input | IIC_Write       | IIC write enable, valid on rising edge       |
| input | IIC_Read        | IIC read enable, valid on rising edge       |
| input | Reg_2Addr       | Register dual address bit, high level for dual address       |
| input | IIC_SDA_In      | SDA data line of IIC bus       |
| output | IIC_Read_Data   | Data read by IIC     |
| output | IIC_Busy        | IIC busy signal, high level is busy     |
| output | IIC_SCL         | SCL clock line of IIC bus     |
| output | SDA_Dir         | SDA data line direction of IIC bus, 0 mode is input, 1 mode is output     |
| output | SDA_Out         | SDA data line of IIC bus     |


## Using Instructions

The corresponding use cases [Camera_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Interface) and [Gyro_Demo](/Examples/FPGA/4.Module-Interface/Gyro-Interface) can be found in [Examples](/Examples) for this IP core.


