# LED-IP系列使用介绍

## IP核介绍

LED-IP系列，总共有三个IP核，分别是SK6805的驱动IP核(RGB LED的IC驱动芯片)、RGB LED的IP核(呼吸灯闪烁)、普通LED的IP核(仅闪烁)

### SK6805的驱动介绍

SK6805芯片，作为RGB LED的驱动芯片，采用单线传输。

编码方法是频率为1.2 kHz的矩形波信号，占空比为25％为0，占空比为75％为1。

RGB单通道共有8位，传输模式为G [7]，G [6] ... G [0]，R [7]，R [6] ... R [0] ，B [7]，B [6] ... B [0]，总计24位。

SK6805系列允许RGB级联，四位引脚，其中两个是电源引脚，两个是输入和输出引脚。可以层叠多个片，并且较高的输出连接到下一个输入。

一次传输完成后，级联传输模式继续传输级联的RGB数据。

例如：   
* 三级级联，只需要发送24×3bit数据到第一级RGBLED。
* 然后在第一级接收完成后将最后的24×2bit数据转发到第二级。
* 最后第二级接收后，转发24位数据。给出第三级。   
* 每轮通信完成后（第一阶段接收所有的电平数据），它需要重新设置80us或更长的时间，即很短的时间。然后它将进入下一个周期的数据传输。   

此驱动程序已打包，只需分配RGB通道值，硬件使用两位串级，因此只有两个RGB输入（48位）。

构成如下:

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

#### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | R_In1           | 第一级的R通道 |
| 输入信号 | G_In1           | 第一级的G通道 |
| 输入信号 | B_In1           | 第一级的B通道 |
| 输入信号 | R_In2           | 第二级的R通道 |
| 输入信号 | G_In2           | 第二级的G通道 |
| 输入信号 | B_In2           | 第二级的B通道 |
| 输入信号 | clk_10MHz       | 10MHz的时钟信号 |
| 输入信号 | Rst             | 复位信号，低电平复位  |
| 输出信号 | LED_IO          | RGB LED数据线输出  |

### RGB LED驱动介绍

构成如下:

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

#### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz  | 100MHz的时钟 |
| 输入信号 | clk_10MHz   | 10MHz的时钟  |
| 输入信号 | Period_100mSecond   | 呼吸灯周期,ms为单位  |
| 输入信号 | R_In        | R通道值      |
| 输入信号 | G_In        | G通道值      |
| 输入信号 | B_In        | B通道值      |
| 输入信号 | Light_Num   | 呼吸闪烁次数  |
| 输入信号 | Rst         | 复位信号，低电平复位  |
| 输出信号 | RGB_LED_IO  | RGB LED数据线输出  |
| 输出信号 | Light_Ok    | 呼吸次数完成  |

### LED闪烁的驱动介绍

构成如下:

```c
module LED_Task(  
    input [1:0]Task_Num,
    input clk_100MHz,
    output LED_IO
    );
```

#### 输入输出信号介绍
  
| **信号类型**    | **信号名称**    | **描述** |
| ----------- | ----------- | -------- |
| 输入信号 | clk_100MHz  | 100MHz的时钟 |
| 输入信号 | Task_Num   | 闪烁周期模式,0模式-100ms，1模式-200ms,2模式-500ms,3模式-1s  |
| 输出信号 | LED_IO     | LED数据线输出  |

## 使用说明

本LED的IP核系列，仅RGB LEDIP核于SK6805驱动IP核，必须配合板载RGB LED模块(SK6805)使用，在[Examples](/Examples)中可以找到对应的使用案例[LED_Demo](/Examples/FPGA/4.Module-Interface/LED)。

