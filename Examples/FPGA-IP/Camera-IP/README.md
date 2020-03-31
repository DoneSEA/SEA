# Camera-IP Series Instructions

## IP Core Introduction

The camera driver series IP core provides two MIPI data reading drivers (Driver_MIPI and Driver_MIPI0), and the OV5647 camera initialization driver.

The difference between the MIPI and MIPI0 drivers is that MIPI0 is one layer less than MIPI. MIPI outputs RGB data and corresponding line-field signals, while MIPI0 outputs 8-bit Dvp format data and corresponding line-field signals.

## Using Instructions

The corresponding using case [Camera_Demo](/Examples/FPGA/4.Module-Interface/MIPI-Camera-Interface) can be found in [Examples](/Examples).


