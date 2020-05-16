# Camera-IP系列的简介

摄像头系列的IP核，提供了两个MIPI数据的读取驱动(Driver_MIPI 和 Driver_MIPI0)，以及OV5647摄像头的初始化驱动。

MIPI和MIPI0驱动的不同之处，在于MIPI0比MIPI少了一层(bayer2rgb)，MIPI输出RGB数据和相应的行场信号，而MIPI0输出8位Dvp格式数据和相应的行场信号。

## 使用说明

摄像头的初始化驱动，仅适用于树莓派MIPI接口的OV5647摄像头，如有需要更换摄像头型号，则需通过数据手册，进行IP核驱动的修改。摄像头系列IP核的使用案例可以在[Examples](/Examples)中找到，例如[Camera_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface)。


