# IIC-IP使用介绍

## IP核介绍

IIC驱动IP核，支持双地址寄存器读写，不支持连续读写。

默认设定IIC传输速率为100k，参数为SCL_SUM=100M/100k。

如需调整传输速率，或者调整IIC的工作时钟，那么需要相应的调整IP核的参数SCL_SUM。

### IIC驱动模块构成

构成如下:

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
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk             | IIC工作时钟,默认为100MHz |
| 输入信号 | Rst             | 复位信号，低电平复位       |
| 输入信号 | Addr            | 从机地址       |
| 输入信号 | Reg_Addr        | 寄存器地址       |
| 输入信号 | Data            | 数据       |
| 输入信号 | IIC_Write       | IIC写使能，上升沿有效       |
| 输入信号 | IIC_Read        | IIC读使能，上升沿有效       |
| 输入信号 | Reg_2Addr       | 寄存器双地址位,高电平为双地址       |
| 输入信号 | IIC_SDA_In      | IIC总线的SDA数据线       |
| 输出信号 | IIC_Read_Data   | IIC读到的数据     |
| 输出信号 | IIC_Busy        | IIC忙信号，高电平为忙     |
| 输出信号 | IIC_SCL         | IIC总线的SCL时钟线     |
| 输出信号 | SDA_Dir         | IIC总线的SDA数据线方向，0模式为输入，1模式为输出     |
| 输出信号 | SDA_Out         | IIC总线的SDA数据线     |


## 使用说明

本IP核在[Examples](/Examples)中可以找到对应的使用案例[Camera_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Interface)以及[Gyro_Demo](/Examples/FPGA/4.Module-Interface/Gyro-Interface)。


