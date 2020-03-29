# Examples

This part stores the basic cases of the SEA board, including the cases of the ESP32 part, the FPGA part, and the IP core of the FPGA.

## ESP32

Waited to be added...

## FPGA

### Repository Structure

| Number | Case Name                                                  | Discription                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Digital-Circuits](/Examples/FPGA/1.Digital-Circuits)        | Digital circuit cases, including three cases: combination logic, sequential logic, and state machine        |
| 2    | [Community-Interface](/Examples/FPGA/2.Community-Interface)  | Communication interface cases, including cases of SPI, IIC, UART, etc.    |
| 3    | [IO-Interface](/Examples/FPGA/3.IO-Interface)                | Common IO interface cases, including cases of LED, PWM generation, etc.       |
| 4    | [Module-Interface](/Examples/FPGA/4.Module-Interface)        | Module interface cases, including cases of on-board modules such as ADC, DAC, Mini HDMI, MIPI camera, gyroscope, etc.  |
| 5    | [Data-Interface](/Examples/FPGA/5.Data-Interface)            | Data interface cases, including basic data interactions in FPGA, such as BRAM, ROM, etc.         |
| 6    | [Extension-Interface](/Examples/FPGA/6.Extension-Interface)  | Expansion interface cases, including cases used by expansion boards, such as digital tubes, joysticks, Bluetooth, etc.           |

## FPGA-IP

### Repository Structure

| Number | Case Name                                                  | Discription                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [ADC-IP](/Examples/FPGA-IP/ADC-IP)                           | Driver IP core of onboard ADC module       |
| 2    | [Camera-IP](/Examples/FPGA-IP/Camera-IP)                     | Driver IP core of onboard MIPI camera      |
| 3    | [DAC-IP](/Examples/FPGA-IP/DAC-IP)                           | Driver IP core of onboard DAC module       |
| 4    | [Frequency-Divider-IP](/Examples/FPGA-IP/Frequency-Divider-IP) | Driver IP core for integer divider       |
| 5    | [Gyro-IP](/Examples/FPGA-IP/Gyro-IP)                         | Driver IP core for onboard gyroscope       |
| 6    | [IIC-IP](/Examples/FPGA-IP/IIC-IP)                           | Driver IP core of IIC interface            |
| 7    | [Image-Process-IP](/Examples/FPGA-IP/Image-Process-IP)       | IP cores related to image processing       |
| 8    | [Mini-HDMI-IP](/Examples/FPGA-IP/Mini-HDMI-IP)               | Driver IP core of Mini HDMI interface      |
| 9    | [LED-IP](/Examples/FPGA-IP/LED-IP)                           | Driver IP core for onboard LED / RGB LED   |
| 10   | [PWM-IP](/Examples/FPGA-IP/PWM-IP)                           | IP core of PWM generator                   |
| 11   | [SPI-IP](/Examples/FPGA-IP/SPI-IP)                           | Driver IP core for SPI interface           |
| 12   | [UART-IP](Examples/FPGA-IP/UART-IP)                          | Driver IP core for UART interface          |
| 13   | [RGB2Stream-IP](/Examples/FPGA-IP/RGB2Stream-IP)             | IP core for RGB image input transformed to stream output     |
| 14   | [Stream2RGB-IP](Examples/FPGA-IP/Stream2RGB-IP)              | IP core for stream input transformed to RGB image output     |
