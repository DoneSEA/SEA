# LED-IP系列介绍

LED-IP系列共有三个IP核，分别是SK6805驱动器IP核（RGB LED IC驱动器芯片），RGB LED IP核（呼吸灯闪烁）和普通LED IP核（仅闪烁）。

## SK6805驱动介绍

SK6805芯片作为RGB LED的驱动芯片，采用单线传输。

编码方法是频率为1.2 kHz的矩形波信号，占空比为25％为0，占空比为75％为1。

RGB单通道共有8位，传输模式为G [7]，G [6] ... G [0]，R [7]，R [6] ... R [0]， B [7]，B [6] ... B [0]，共24位。

SK6805系列允许RGB级联的四位引脚，其中两个是电源引脚，两个是输入和输出引脚。 可以堆叠多个切片，较高的输出连接到下一个输入。

一次传输完成后，级联传输模式继续传输级联的RGB数据。

例如:

* 三级级联，只需要发送24×3bit数据到第一级RGBLED。
* 然后，在完成第一级接收之后，最后的24×2bit数据被转发到第二级。
* 最终接收到第二级后，将24位数据转发到第三级。
* 每轮通讯完成后（第一阶段接收所有电平数据），它需要重置80us或更长时间，即很短的时间。 然后它将进入下一个数据传输周期。

该驱动程序已经封装成IP核，仅需要分配RGB通道值。硬件使用两位的级联，因此只有两个RGB输入（48位）。

```c
module Driver_SK6805(
    input [7:0]R_In1,
    input [7:0]G_In1,
    input [7:0]B_In1,
    input [7:0]R_In2,
    input [7:0]G_In2,
    input [7:0]B_In2,
    input clk_10MHz,
    input Rst,
    output reg LED_IO
    );
```

### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | R_In1           | 第一级R通道值 |
| input | G_In1           | 第一级G通道值 |
| input | B_In1           | 第一级B通道值 |
| input | R_In2           | 第二级R通道值 |
| input | G_In2           | 第二级G通道值 |
| input | B_In2           | 第二级B通道值 |
| input | clk_10MHz       | 10MHz时钟信号 |
| input | Rst             | 复位信号，低电平有效   |
| output | LED_IO          | RGB LED的数据输出线  |

## RGB LED驱动简介

```c
module RGB_LED_Task(
   input clk_100MHz,
   input clk_10MHz,
   input [5:0]Period_100mSecond,
   input [7:0]R_In,
   input [7:0]G_In,
   input [7:0]B_In,
   input [10:0]Light_Num,
   input Rst,
   output RGB_LED_IO,
   output reg Light_Ok
   );
```

### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_100MHz  | 100MHz的时钟 |
| input | clk_10MHz   | 10MHz的时钟  |
| input | Period_100mSecond   | 呼吸灯的周期，ms为单位  |
| input | R_In        | R通道值      |
| input | G_In        | G通道值      |
| input | B_In        | B通道值      |
| input | Light_Num   | 闪烁次数  |
| input | Rst         | 复位信号，低电平有效  |
| output | RGB_LED_IO  | RGB LED输出的数据线  |
| output | Light_Ok    | 完成呼吸次数，高电平有效  |

## LED闪烁驱动简介

```c
module LED_Task(  
    input [1:0]Task_Num,
    input clk_100MHz,
    output LED_IO
    );
```

### 信号简介
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| input | clk_100MHz  | 100MHz的时钟 |
| input | Task_Num   | 闪烁频率模式，0 mode-100ms, 1 mode-200ms, 2 mode-500ms, 3 mode-1s  |
| output | LED_IO     | LED数据线输出  |

## 使用说明

RGB LED的驱动IP核仅使用于SK6805驱动的RGB LED。LED系列IP核的使用案例，可以在[Examples](/Examples)中找到，例如[LED_Demo](/Examples/FPGA/4.Module-Interface/LED)。

