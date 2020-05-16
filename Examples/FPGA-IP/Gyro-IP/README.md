# Gyro-IP简介

板载陀螺仪模块的驱动IP核，需要外接一个外部IIC驱动，本IP核仅处理IIC读取数据的地址和输出数据。

对于IIC地址的处理，根据陀螺仪手册，可以获得以下地址：

| **地址名称**    | **低8位地址**  | **高8位地址** | **描述** |
| ----------- | ----------- | ----------- | -------- |
| Slave       |     D6H     |     /       |  IIC选中的陀螺仪地址 |
| Temperature |     20H     |    21H      |  温度地址 |
| Gyro_X      |     22H     |    23H      |  加速度X轴地址 |
| Gyro_Y      |     24H     |    25H      |  加速度Y轴地址 |
| Gyro_Z      |     26H     |    27H      |  加速度Z轴地址|
| Mag_X       |     66H     |    67H      |  磁力X轴地址  |
| Mag_Y       |     68H     |    69H      |  磁力Y轴地址   |
| Mag_Z       |     6AH     |    6BH      |  磁力Z轴地址   |

IIC输出数据是高位和低位拼接后的16位数据。

## 陀螺仪驱动模块组成

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
## 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_100MHz     | 100MHz时钟 |
| input | clk_10MHz      | 10MHz时钟  |
| input | IIC_Busy       | IIC忙的标志，低电平空闲  |
| input | Enable_Gyro    | 使能信号，高电平有效 |
| input | IIC_Data       | IIC读取到的数据  |
| input | Ctrl_Temp_Out  | 温度数据读取控制，高电平有效  |
| input | Ctrl_Gyro_Out  | 加速度数据读取控制，高电平有效 |
| input | Ctrl_Mag_Out   | 磁力数据读取控制，高电平有效  |
| output | Addr           | 从机地址     |
| output | Reg_Addr       | 寄存器地址   |
| output | Reg_Data       | 寄存器数据   |
| output | Temp_Data      | 温度数据     |
| output | Gyro_Data_X    | 加速度X轴数据|
| output | Gyro_Data_Y    | 加速度Y轴数据|
| output | Gyro_Data_Z    | 加速度Z轴数据|
| output | Mag_Data_X     | 磁力X轴数据  |
| output | Mag_Data_X     | 磁力Y轴数据  |
| output | Mag_Data_X     | 磁力Z轴数据  |
| output | IIC_Write      | IIC写信号，上升沿有效  |
| output | IIC_Read       | IIC读信号，上升沿有效 |
| output | Reg_2Addr      | 寄存器双地址位，高电平为双地址|
| output | Ctrl_IIC       | IIC使能，高电平有效     |

## 使用说明

本IP核仅供板载6轴传感器LSM6DS3TR模块使用，如需要换成驱动其他型号的ADC模块，需要按照对应的数据手册，进行本IP核的修改。对应的使用案例，可以在[Examples](/Examples)找到，比如 [Gyro_Demo](/Examples/FPGA/4.Module-Interface/Gyro-Interface)。

