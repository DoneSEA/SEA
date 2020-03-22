# 模块接口案例

模块接口案例，依托于板载的外设模块，提供DAC接口案例、ADC接口案例、HDMI接口案例、陀螺仪接口案例、MIPI接口案例

## DAC接口案例

[DAC接口案例](/Examples/FPGA/4.Module-Interface/DAC-Interface)，目前提供以DAC接口为基础，设计实现的函数信号发生器，支持三角波、正弦波、方波三种波形，并且频率、幅值、相位可调。

## ADC接口案例

[ADC接口案例](/Examples/FPGA/4.Module-Interface/ADC-Interface)，目前提供以ADC接口为基础，设计实现的双踪示波器，支持3.3V幅值以内、100kHz以内且1kHz以上的波形检测(超出部分检测不准确)。

## HDMI接口案例

[HDMI接口案例](/Examples/FPGA/4.Module-Interface/HDMI-Interface)，目前提供以HDMI接口为基础，实现的屏幕显示。通过外接HDMI显示器，可将FPGA的ROM中存储的图像通HDMI显示屏显示出来。

## 陀螺仪接口案例

[陀螺仪接口案例](/Examples/FPGA/4.Module-Interface/Gyro-Interface)，目前提供以陀螺仪接口、UART接口、IIC接口为基础，实现的陀螺仪数据读取及发送。通过IIC总线读取陀螺仪数据，然后经过UART传输出去，可外接蓝牙。并且，案例提供[纯硬核形式(Verilog实现)](/Examples/FPGA/4.Module-Interface/Gyro-Interface/Gyro_Demo_Verilog)、[纯软核形式(MicroBlaze实现)](/Examples/FPGA/4.Module-Interface/Gyro-Interface/Gyro_Demo_MicroBlaze)两种案例。

## MIPI接口案例

[MIPI接口案例](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface)，目前提供以MIPI接口、HDMI接口为基础，实现摄像头图像显示。通过IIC总线初始化MIPI 摄像头，然后利用MIPI接口读取摄像头图像数据，经过HDMI传输到屏幕进行显示。另外，该类型案例，除了支持[摄像头直接显示](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Camera_Demo)，还支持[摄像头的基本图像处理显示](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Image_Demo)。

摄像头的基本图像处理，目前包括灰度化处理、二值化处理、RGB转HSV、HSV转RGB、边缘检测五种，均包含在[Image_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Image_Demo)中。

### 案例结构

| 序号 | 名称                                                         | 描述                                       |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [DAC-Interface](/Examples/FPGA/4.Module-Interface/DAC-Interface)   | DAC接口案例，目前包括DAC波形发生器  |
| 2    | [ADC-Interface](/Examples/FPGA/4.Module-Interface/ADC-Interface)  | ADC接口案例，目前包括ADC双踪示波器  |
| 3    | [HDMI-Interface](/Examples/FPGA/4.Module-Interface/HDMI-Interface)  | HDMI接口案例，目前包括HDMI图像显示  |
| 4    | [Gyro-Interface](/Examples/FPGA/4.Module-Interface/Gyro-Interface)  | Gyro接口案例，目前包括陀螺仪数据读取传输  |
| 5    | [MIPI-Camera-Interface](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface)  | MIPI摄像头接口案例，目前包括摄像头图像显示、摄像头图像处理  |