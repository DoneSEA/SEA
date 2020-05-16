# IIC-IP简介

IIC的驱动IP核支持双地址寄存器读取和写入，不支持连续读取和写入。

IIC传输速率的默认设置为100kHz，参数为SCL_SUM = 100M / 100k。

如果需要调整传输速率或调整IIC的工作时钟，则需要相应地调整IP内核的SCL_SUM参数。

## IIC驱动模块组成

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
## 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk             | IIC工作时钟，默认100MHz                                   |
| input | Rst             | 复位信号，低电平有效                                       |
| input | Addr            | 从机地址                                                  |
| input | Reg_Addr        | 寄存器地址                                                |
| input | Data            | IIC读取到的数据                                           |
| input | IIC_Write       | IIC写使能，上升沿有效                                      |
| input | IIC_Read        | IIC写使能，上升沿有效                                      |
| input | Reg_2Addr       | 寄存器双地址位，高电平代表双地址                            |
| input | IIC_SDA_In      | IIC的SDA数据线                                            |
| output | IIC_Read_Data   | IIC读取的数据                                            |
| output | IIC_Busy        | IIC忙信号，高电平为忙                                     |
| output | IIC_SCL         | IIC的SCL时钟线                                           |
| output | SDA_Dir         | IIC总线的SDA数据线方向控制, 0模式代表输入，1模式代表输出     |
| output | SDA_Out         | IIC总线的SDA输出数据线                                    |

## 使用说明

对应的使用案例，可以在[Examples](/Examples)找到，比如[Camera_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Interface) 和[Gyro_Demo](/Examples/FPGA/4.Module-Interface/Gyro-Interface)。


