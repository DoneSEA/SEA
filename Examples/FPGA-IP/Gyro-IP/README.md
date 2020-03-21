# Gyro-IP使用介绍

## IP核介绍

陀螺仪驱动IP核，需要外接IIC驱动，仅对IIC读取数据的地址、输出数据进行处理。

IIC地址处理，根据陀螺仪手册，得到以下地址：

| **地址名称**    | **地址低位**  | **地址高位** | **描述** |
| ----------- | ----------- | ----------- | -------- |
| Slave       |     D6H     |     /       |IIC选中陀螺仪的地址 |
| Temperature |     20H     |    21H      |  温度地址 |
| Gyro_X      |     22H     |    23H      |  加速度X轴地址 |
| Gyro_Y      |     24H     |    25H      |  加速度Y轴地址 |
| Gyro_Z      |     26H     |    27H      |  加速度Z轴地址 |
| Mag_X       |     66H     |    67H      |  磁力X轴地址   |
| Mag_Y       |     68H     |    69H      |  磁力Y轴地址   |
| Mag_Z       |     6AH     |    6BH      |  磁力Z轴地址   |

IIC输出数据，经过高低位拼接后，输出16位数据。

### 陀螺仪驱动模块构成

构成如下:

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
### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz     | 100MHz的时钟 |
| 输入信号 | clk_10MHz      | 10MHz的时钟  |
| 输入信号 | IIC_Busy       | IIC忙碌标志，低电平有效  |
| 输入信号 | Enable_Gyro    | 使能信号，高低平有效  |
| 输入信号 | IIC_Data       | IIC读取到的数据  |
| 输入信号 | Ctrl_Temp_Out  | 控制温度输出，高电平有效  |
| 输入信号 | Ctrl_Gyro_Out  | 控制加速度输出，高电平有效  |
| 输入信号 | Ctrl_Mag_Out   | 控制磁力输出，高电平有效  |
| 输出信号 | Addr           | 从机地址     |
| 输出信号 | Reg_Addr       | 寄存器地址   |
| 输出信号 | Reg_Data       | 寄存器数据   |
| 输出信号 | Temp_Data      | 温度数据     |
| 输出信号 | Gyro_Data_X    | 加速度X轴数据|
| 输出信号 | Gyro_Data_Y    | 加速度Y轴数据|
| 输出信号 | Gyro_Data_Z    | 加速度Z轴数据|
| 输出信号 | Mag_Data_X     | 磁力X轴数据  |
| 输出信号 | Mag_Data_X     | 磁力Y轴数据  |
| 输出信号 | Mag_Data_X     | 磁力Z轴数据  |
| 输出信号 | IIC_Write      | IIC写信号,上升沿有效  |
| 输出信号 | IIC_Read       | IIC读信号，上升沿有效 |
| 输出信号 | Reg_2Addr      | 寄存器双地址位，高有效|
| 输出信号 | Ctrl_IIC       | IIC使能     |

## 使用说明

本IP核仅配合板载陀螺仪模块(LSM6DS3TR)使用，在[Examples](/Examples)中可以找到对应的使用案例[Gyro_Demo](/Examples/FPGA/4.Module-Interface/Gyro-Interface)。

