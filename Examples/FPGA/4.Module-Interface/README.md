# 板载模块接口案例

模块接口案例，依托于板载模块，目前提供DAC接口案例，ADC接口案例，Mini-HDMI接口案例，陀螺仪接口案例和MIPI接口案例

## DAC接口案例

[DAC接口案例](/Examples/FPGA/4.Module-Interface/DAC-Interface), 目前提供基于DAC接口设计和实现的功能信号发生器，支持三角波，正弦波和方波三种波形，并且频率，幅度和相位均可调。

## ADC接口案例

[ADC接口案例](/Examples/FPGA/4.Module-Interface/ADC-Interface), 目前提供基于ADC接口设计和实现的双踪示波器，支持3.3V幅度，100kHz和1kHz波形检测（超过的话检测不准确）。

## Mini-HDMI接口案例

[Mini-HDMI接口案例](/Examples/FPGA/4.Module-Interface/Mini-HDMI-Interface), 当前提供基于HDMI接口的屏幕显示。通过外部HDMI显示器，可以将存储在FPGA ROM中的图像显示在HDMI显示器上。

## 陀螺仪接口案例

[陀螺仪接口案例](/Examples/FPGA/4.Module-Interface/Gyro-Interface), 目前提供基于陀螺仪接口，UART接口，IIC接口的陀螺仪数据读取和发送。通过IIC总线读取陀螺仪数据，然后通过可连接至蓝牙的UART传输数据。 并且，该案提供 [纯硬核形式(Verilog实现)](/Examples/FPGA/4.Module-Interface/Gyro-Interface/Gyro_Demo_Verilog), [纯软核形式(MicroBlaze实现)](/Examples/FPGA/4.Module-Interface/Gyro-Interface/Gyro_Demo_MicroBlaze)两种案例。

## MIPI CSI接口案例

[MIPI CSI接口案例](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface), 目前提供MIPI接口，Mini HDMI接口作为实现相机图像显示的基础。 通过IIC总线初始化MIPI摄像头，然后使用MIPI接口读取摄像机图像数据，并通过HDMI将其传输到屏幕进行显示。 另外，这种情况下，除了支持 [摄像头图像直接显示](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Camera_Demo),也支持 [摄像头基本图像处理并显示](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Image_Demo).

摄像头基本图像处理, 目前包括灰度处理，二进制处理，RGB至HSV，HSV至RGB和边缘检测，可以在[Image_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Image_Demo)中找到。

### 模块接口案例组成

| 序号 | 案例名称                                                  | 描述                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [DAC-Interface](/Examples/FPGA/4.Module-Interface/DAC-Interface)   | DAC接口案例，目前包括DAC波形发生器 |
| 2    | [ADC-Interface](/Examples/FPGA/4.Module-Interface/ADC-Interface)  | ADC接口案例，目前包括ADC双踪示波器  |
| 3    | [Mini-HDMI-Interface](/Examples/FPGA/4.Module-Interface/Mini-HDMI-Interface)  | Mini HDMI接口案例，目前包括HDMI图像显示  |
| 4    | [Gyro-Interface](/Examples/FPGA/4.Module-Interface/Gyro-Interface)  | 陀螺仪接口案例，目前包括陀螺仪数据读取并传输  |
| 5    | [MIPI-Camera-Interface](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface)  | MIPI CSI接口案例，目前包括摄像头图像读取、显示、处理 |