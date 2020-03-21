# FPGA部分案例

本部分，基于SEA板卡的FPGA部分、外设资源，划分了6组FPGA案例。

## 案例组成介绍

其中，每组案例中，包含对应类型中的若干个子案例，如数字电路部分，包括组合逻辑电路、时序逻辑电路、状态机三个系列案例。

每个案例，除了必须使用的官方IP核(分频器等)，均采用verilog代码(或同时具备软核工程)实现。

### 案例结构

| 序号 | 名称                                                         | 描述                                       |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Digital-Circuits](/Examples/FPGA/1.Digital-Circuits)        | 数字电路案例，包含组合、时序、状态机三个系列的案例                   |
| 2    | [Community-Interface](/Examples/FPGA/2.Community-Interface)  | 通信接口案例，包含SPI、IIC、UART等的案例                            |
| 3    | [IO-Interface](/Examples/FPGA/3.IO-Interface)                | 普通IO接口案例，包含LED使用、PWM发生等的案例                        |
| 4    | [Module-Interface](/Examples/FPGA/4.Module-Interface)        | 模块接口案例，包含ADC、DAC、HDMI、MIPI摄像头、陀螺仪等板载模块的案例  |
| 5    | [Data-Interface](/Examples/FPGA/5.Data-Interface)            | 数据接口案例，包含FPGA中基本数据存取，如BRAM、ROM的使用案例          |
| 6    | [Extension-Interface](/Examples/FPGA/6.Extension-Interface)  | 扩展接口案例，包含扩展板使用的案例，如数码管、摇杆、蓝牙等           |
