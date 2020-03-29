# IP Contents of FPGA

This section is used to store the IP core library and corresponding library projects of the SEA board FPGA.

## Content Introduction

FPGA IP core library officially provides the corresponding vivado version library file, and the corresponding vivado project.

The specific structure of this part is carried out in the following format:

  > XXX-IP
  > > Driver_XXX   
  > > IP   

## Repository Structure

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

