# Camera-IP系列介绍

## IP核介绍

摄像头驱动系列IP核，提供了MIPI的两种数据读取驱动(Driver_MIPI与Driver_MIPI0)、以及OV5647摄像头初始化驱动。

其中MIPI和MIPI0驱动的区别，主要在于MIPI0比MIPI少了一层，MIPI输出为RGB数据及对应的行场信号，而MIPI0输出为8位Dvp格式数据及对应的行场信号

## 使用说明

本IP核在[Examples](/Examples)中可以找到对应的使用案例[Camera_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Interface)。


