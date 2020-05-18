# 数字电路系列案例

数字电路系列案例包括组合逻辑电路，时序逻辑电路和状态机。

## 组合逻辑电路

这部分包括4-2编码器和2-4解码器，都采用组合逻辑来实现。

* [4-2 encoder](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design/4-2-Encoder)采用 ' always@(*) '赋值

![](/Examples/Images/4-2-Encoder-Examples.png)

* [2-4 decoder](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design/2-4-Decoder)，采用' assign ' 连续赋值

![](/Examples/Images/2-4-Decoder-Examples.png)

## 时序逻辑电路

这个部分包括[Basic D Flip-Flop](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Basic-D-Flip-Flop)、[Synchronous Reset D Flip-Flop](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Synchronous-Reset-D-Flip-Flop)、[Asynchronous Reset D Flip-Flop](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Asynchronous-Reset-D-Flip-Flop)、[Add Counter](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Add-Counter)，采用时序逻辑实现。

## 状态机

这部分包括Moore型和Mealy型两种状态机。Mealy型提供了Gray编码和One-Hot编码两个案例。

## 数字电路系列案例组成

| 序号 | 案例名称                                                  | 描述                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Combination-Logic-Circuit-Design](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design)   | 组合逻辑电路，包括2-4个解码器，4-2个编码器等 |
| 2    | [Sequential-Logic-Circuit-Design](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design)   | 时序逻辑电路，包括D触发器及其各种形式，计数器等。|
| 3    | [State-Machine-Design](/Examples/FPGA/1.Digital-Circuits/3.State-Machine-Design)   | 状态机，包括Moore型和Mealy型状态机  |