# 颜色识别工程

## 说明
颜色识别案例提供了2个bitstream，其中system_wrapper.bit为EA-S7独立工作版本，通过板载拨码开关来控制；system_wrapper_Arduino.bit需要Arduino配合，具体信息，请参考[Readme.md](/Readme.md)

## FPGA bitstream加载说明

Vivado > Open Hardware Manager > Open target > Auto Connect > Program device > Select system_wrapper_old.bit in Bitstream file > Program


## SEA-S7独立工作测试步骤

K1为程序复位开关，off为复位，on为正常工作。
1.复位开始状态：K2为on + K3为on。
2.识别目标颜色：K2为on + K3为off。
3.追踪目标：K2为off + K3为off。

