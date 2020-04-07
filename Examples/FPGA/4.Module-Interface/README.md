# Module Interface Cases

Module interface cases, relying on the on-board peripheral module, currently provide DAC interface case, ADC interface case, Mini-HDMI interface case, gyro interface case and MIPI interface case

## DAC Interface Case

[DAC Interface Case](/Examples/FPGA/4.Module-Interface/DAC-Interface), currently provides a function signal generator designed and implemented based on the DAC interface, supporting three waveforms of triangular wave, sine wave and square wave, And the frequency, amplitude and phase are adjustable.

## ADC Interface Case

[ADC Interface Case](/Examples/FPGA/4.Module-Interface/ADC-Interface), currently provides a dual-track oscilloscope designed and implemented based on the ADC interface, supporting 3.3V amplitude, 100kHz and 1kHz Waveform detection (excess detection is not accurate).

## Mini-HDMI Interface Case

[Mini-HDMI Interface Case](/Examples/FPGA/4.Module-Interface/Mini-HDMI-Interface), currently provides on-screen display based on the HDMI interface. Through the external HDMI display, the image stored in the FPGA ROM can be displayed on the HDMI display.

## Gyroscope Interface Case 

[Gyroscope Interface Case](/Examples/FPGA/4.Module-Interface/Gyro-Interface), currently provides gyro data reading and sending based on gyro interface, UART interface, IIC interface. Read the gyroscope data through the IIC bus, and then transmit it through the UART, which can be connected to Bluetooth. And, the case provides [pure hard core form (Verilog implementation)](/Examples/FPGA/4.Module-Interface/Gyro-Interface/Gyro_Demo_Verilog), [pure soft core form (MicroBlaze implementation)](/Examples/FPGA/4.Module-Interface/Gyro-Interface/Gyro_Demo_MicroBlaze) two cases.

## MIPI CSI Interface Case

[MIPI CSI Interface Case](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface), currently provides MIPI interface, HDMI interface as the basis to achieve camera image display. Initialize the MIPI camera through the IIC bus, and then use the MIPI interface to read the camera image data and transmit it to the screen via HDMI for display. In addition, this type of case, in addition to supporting [Camera Direct Display](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Camera_Demo), also supports [Camera Basic Image Processing Display](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Image_Demo).

The basic image processing of the camera, currently includes gray processing, binary processing, RGB to HSV, HSV to RGB, and edge detection, are included in [Image_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface/Image_Demo).

### Repository Structure

| Number | Case Name                                                  | Discription                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [DAC-Interface](/Examples/FPGA/4.Module-Interface/DAC-Interface)   | DAC interface case, currently including DAC waveform generator  |
| 2    | [ADC-Interface](/Examples/FPGA/4.Module-Interface/ADC-Interface)  | ADC interface case, currently including ADC dual trace oscilloscope  |
| 3    | [Mini-HDMI-Interface](/Examples/FPGA/4.Module-Interface/Mini-HDMI-Interface)  | Mini HDMI interface case, currently including HDMI image display  |
| 4    | [Gyro-Interface](/Examples/FPGA/4.Module-Interface/Gyro-Interface)  | Gyro interface case, currently including gyroscope data reading and transmission  |
| 5    | [MIPI-Camera-Interface](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface)  | MIPI CSI camera interface case, currently including camera image display, camera image processing  |