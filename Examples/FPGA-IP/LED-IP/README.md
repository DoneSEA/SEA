# LED-IP Series introduction

## IP Core Introduction

The LED-IP series has a total of three IP cores, which are the SK6805 driver IP core (RGB LED IC driver chip), RGB LED IP core (breathing lamp blinking), and ordinary LED IP core (blinking only).

### SK6805 driver introduction

SK6805 chip, as the driving chip of RGB LED, adopts single line transmission.

The coding method is a rectangular wave signal with a frequency of 1.2 kHz, a duty ratio of 25% is 0, and a duty ratio of 75% is 1.

The RGB single channel has a total of 8 bits, and the transmission mode is G [7], G [6] ... G [0], R [7], R [6] ... R [0], B [7], B [6] ... B [0], a total of 24 digits.

The SK6805 series allows RGB cascading, four-bit pins, two of which are power pins and two are input and output pins. Multiple slices can be stacked, and the higher output is connected to the next input.

After one transmission is completed, the cascade transmission mode continues to transmit cascaded RGB data.

E.g:

* Three-level cascade, only need to send 24 × 3bit data to the first level RGBLED.
* Then, after the first level reception is completed, the last 24 × 2bit data is forwarded to the second level.
* After the second level is finally received, the 24-bit data is forwarded to the third level.
* After each round of communication is completed (the first stage receives all the level data), it needs to reset 80us or longer time, that is a very short time. Then it will enter the next cycle of data transmission.

This driver is packaged and only needs to assign RGB channel values. The hardware uses two-bit cascade, so there are only two RGB inputs (48 bits).

The module configuration is as follows:

```c
module Driver_SK6805(
    input [7:0]R_In1,
    input [7:0]G_In1,
    input [7:0]B_In1,
    input [7:0]R_In2,
    input [7:0]G_In2,
    input [7:0]B_In2,
    input clk_10MHz,
    input Rst,
    output reg LED_IO
    );
```

#### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | R_In1           | R channel of the first level |
| input | G_In1           | G channel of the first level |
| input | B_In1           | B channel of the first level |
| input | R_In2           | R channel of the second level |
| input | G_In2           | G channel of the second level |
| input | B_In2           | B channel of the second level |
| input | clk_10MHz       | 10MHz clock signal |
| input | Rst             | Reset signal, active low   |
| output | LED_IO          | RGB LED data line output  |

### RGB LED driver introduction

The module configuration is as follows:

```c
module RGB_LED_Task(
   input clk_100MHz,
   input clk_10MHz,
   input [5:0]Period_100mSecond,
   input [7:0]R_In,
   input [7:0]G_In,
   input [7:0]B_In,
   input [10:0]Light_Num,
   input Rst,
   output RGB_LED_IO,
   output reg Light_Ok
   );
```

#### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_100MHz  | 100MHz clock |
| input | clk_10MHz   | 10MHz clock  |
| input | Period_100mSecond   | Breathing light cycle, ms as a unit  |
| input | R_In        | R channel value      |
| input | G_In        | G channel value      |
| input | B_In        | B channel value      |
| input | Light_Num   | Number of breathing flashes  |
| input | Rst         | Reset signal, active low  |
| output | RGB_LED_IO  | RGB LED data line output  |
| output | Light_Ok    | Complete breaths, active high  |

### LED flashing driver introduction

The module configuration is as follows:

```c
module LED_Task(  
    input [1:0]Task_Num,
    input clk_100MHz,
    output LED_IO
    );
```

#### Signal Introduction
  
| **Signal Type**    | **Signal Name**    | **Discription** |
| ----------- | ----------- | -------- |
| input | clk_100MHz  | 100MHz clock |
| input | Task_Num   | Blinking cycle mode, 0 mode-100ms, 1 mode-200ms, 2 mode-500ms, 3 mode-1s  |
| output | LED_IO     | LED data line output  |

## Using Instructions

The IP core series of this LED, only the RGB LEDIP core is driven by the SK6805 IP core, and must be used with the onboard RGB LED module (SK6805). The corresponding use case [LED_Demo](/Examples/FPGA/4.Module-Interface/LED) can be found in [Examples](/Examples). 

