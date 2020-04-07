# Digital Circuit Cases

Digital circuit cases include combinational logic circuit, sequential logic circuit, and state machine.

## Combination Logic Circuit

This part includes 4-2 decoder case and 2-4 decoder case, both use combinational logic to achieve.

* [4-2 encoder](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design/4-2-Encoder)，Adopt ' always@(*) ' assignment method

![](/Examples/Images/4-2-Encoder-Examples.png)

* [2-4 decoder](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design/2-4-Decoder)，Use ' assign ' Continuous Assignment

![](/Examples/Images/2-4-Decoder-Examples.png)

## Sequential Logic Circuit

This part includes [Basic D Flip-Flop](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Basic-D-Flip-Flop)、[Synchronous Reset D Flip-Flop](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Synchronous-Reset-D-Flip-Flop)、[Asynchronous Reset D Flip-Flop](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Asynchronous-Reset-D-Flip-Flop)、[Add Counter](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design/Add-Counter)，采用时序逻辑实现。

## State Machine

This part includes Moore type and Mealy type two state machine cases. Mealy type provides Gray coding case and One-Hot coding case.

### Repository Structure

| Number | Case Name                                                  | Discription                                |
| ---- | ------------------------------------------------------------ | ------------------------------------------ |
| 1    | [Combination-Logic-Circuit-Design](/Examples/FPGA/1.Digital-Circuits/1.Combination-Logic-Circuit-Design)   |Combination logic circuit case, including 2-4 decoder, 4-2 encoder, etc.  |
| 2    | [Sequential-Logic-Circuit-Design](/Examples/FPGA/1.Digital-Circuits/2.Sequential-Logic-Circuit-Design)   | Sequential logic circuit case, including D flip-flop and its various forms, counters, etc.  |
| 3    | [State-Machine-Design](/Examples/FPGA/1.Digital-Circuits/3.State-Machine-Design)   | State machine cases, including Moore type and Mealy type state machine cases  |