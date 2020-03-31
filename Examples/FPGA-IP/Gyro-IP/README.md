# Gyro-IP Instructions

## IP Core Introduction

Driver IP core of onboard gyroscope module requires an external IIC driver to process only the address and output data of the IIC read data.

IIC address processing, according to the gyroscope manual, get the following address:

| **Address Name**    | **Low Address**  | **High Address** | **Discription** |
| ----------- | ----------- | ----------- | -------- |
| Slave       |     D6H     |     /       |Gyro address selected by IIC |
| Temperature |     20H     |    21H      |  Temperature address |
| Gyro_X      |     22H     |    23H      |  Acceleration X axis address |
| Gyro_Y      |     24H     |    25H      |  Acceleration Y axis address |
| Gyro_Z      |     26H     |    27H      |  Acceleration Z axis address |
| Mag_X       |     66H     |    67H      |  Magnetic X axis address   |
| Mag_Y       |     68H     |    69H      |  Magnetic Y axis address   |
| Mag_Z       |     6AH     |    6BH      |  Magnetic Z axis address   |

IIC output data is 16-bit data after high and low bit splicing.

### Module Composition

The module structure diagram is as follows:

```c
module Driver_Gyro(
    input clk_100MHz,
    input clk_10MHz,
    input IIC_Busy,
    input Enable_Gyro,
    input [7:0]IIC_Data,
    input Ctrl_Temp_Out,
    input Ctrl_Gyro_Out,
    input Ctrl_Mag_Out,
    output reg[7:0]Addr=8'hd6,
    output reg [15:0]Reg_Addr=16'd10,
    output reg [7:0]Reg_Data=8'h70,
    output [15:0]Temp_Data,
    output [15:0]Gyro_Data_X,
    output [15:0]Gyro_Data_Y,
    output [15:0]Gyro_Data_Z,
    output [15:0]Mag_Data_X,
    output [15:0]Mag_Data_Y,
    output [15:0]Mag_Data_Z,
    output IIC_Write,
    output IIC_Read,
    output reg Reg_2Addr=0,
    output reg Ctrl_IIC=0
    );
```
### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_100MHz     | 100MHz clock |
| input | clk_10MHz      | 10MHz clock  |
| input | IIC_Busy       | IIC busy flag, active low  |
| input | Enable_Gyro    | Enable signal, active high |
| input | IIC_Data       | Data read by IIC  |
| input | Ctrl_Temp_Out  | Control temperature output, active high  |
| input | Ctrl_Gyro_Out  | Control acceleration output, active high  |
| input | Ctrl_Mag_Out   | Control magnetic output, active high  |
| output | Addr           | Slave address     |
| output | Reg_Addr       | Register address   |
| output | Reg_Data       | Register data   |
| output | Temp_Data      | Temperature data     |
| output | Gyro_Data_X    | X-axis acceleration data|
| output | Gyro_Data_Y    | Y-axis acceleration data|
| output | Gyro_Data_Z    | Z-axis acceleration data|
| output | Mag_Data_X     | Magnetic X-axis data  |
| output | Mag_Data_X     | Magnetic Y-axis data  |
| output | Mag_Data_X     | Magnetic Z-axis data  |
| output | IIC_Write      | IIC write signal, rising edge is valid  |
| output | IIC_Read       | IIC read signal, rising edge is valid |
| output | Reg_2Addr      | Register double address bit, active high|
| output | Ctrl_IIC       | IIC enable, active high     |

## Using Instructions

This IP core is only used with the onboard gyro module (LSM6DS3TR). The corresponding use case [Gyro_Demo](/Examples/FPGA/4.Module-Interface/Gyro-Interface) can be found in [Examples](/Examples).

