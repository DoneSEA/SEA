# 数字电路部分案例

数字电路案例，包含组合逻辑电路案例、时序逻辑电路案例、状态机案例。

## 组合逻辑电路案例

包含4-2译码器案例与2-4译码器器案例，均采用组合逻辑实现。

* [4-2编码器案例](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design/4-2-Encoder)，采用Always@(*)赋值方式实现

![](/Examples/Images/4-2-Encoder-Examples.png)

* [2-4译码器案例](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design/2-4-Decoder)，采用Assign连续赋值方式实现

![](/Examples/Images/2-4-Decoder-Examples.png)

## 时序逻辑电路案例

包含[基本D触发器案例](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Basic-D-Flip-Flop)、[同步D触发器案例](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Synchronous-Reset-D-Flip-Flop)、[异步D触发器案例](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Asynchronous-Reset-D-Flip-Flop)、[加法计数器案例](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Add-Counter)，采用时序逻辑实现。

## 状态机案例

包含Moore型与Mealy型两种状态机案例。其中Mealy型提供Gray编码案例、One-Hot编码案例两种。

### 案例结构

| 序号 | 名称                                                         | 描述                                       |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Combination-Logic-Circuit-Design](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design)   |组合逻辑电路案例，包含2-4译码器、4-2编码器等  |
| 2    | [Sequential-Logic-Circuit-Design](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design)   | 时序逻辑电路案例，包含D触发器及其各种形态、计数器等  |
| 3    | [State-Machine-Design](/Examples/FPGA/1.Digital-Circuits/3.State-Machine-Design)   | 状态机案例，包含Moore型与Mealy型两种状态机案例  |