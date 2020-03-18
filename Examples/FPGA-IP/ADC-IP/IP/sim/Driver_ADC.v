`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/18 13:37:41
// Design Name: 
// Module Name: Driver_ADC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Driver_ADC(
    input clk_100MHz,       //Clock
    input clk_system,       //Clock reading signal
    input Rst,              //Reset signal, low reset
    input[7:0]ADC_Data,     //ADC sampling data
    input[17:0]Read_Addr,   //Read signal address
    input[7:0]Trigger_Gate, //Trigger threshold
    output[17:0]Period,     //frequency
    output clk_ADC,         //ADC clock
    output ADC_En,          //ADC enable signal
    output [7:0]ADC_Data_Out //Storage signal output
    );
    //Number of samples
    parameter Sampling_Num=38400;
    //ADC, address counter
    reg [15:0]Addr_Cnt=0;
    //Actual read address
    reg[15:0]Addr_Read_Real=0;
    //ADC enable signal connection
    assign ADC_En=~Rst;
    //Frequency division produces ADC clock
    Clk_Division Clk_Division_ADC(
              .clk_100MHz(clk_100MHz),  // input wire clk_100MHz
              .clk_mode(200),             // input wire [30 : 0] clk_mode
              .clk_out(clk_ADC)        // output wire clk_out
            );
    //ADC address count
    always@(posedge clk_ADC or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Addr_Cnt<=0;
            else if(Addr_Cnt==Sampling_Num-1)
                Addr_Cnt<=0;
            else
                Addr_Cnt<=Addr_Cnt+1;           
        end
    //Frequency calculation
    Freq_Cal Freq_Cal0(
        .clk_100MHz(clk_100MHz),
        .Rst(Rst),
        .ADC_Data(ADC_Data),
        .F_Gate(Trigger_Gate),
        .Period(Period)
        );
    //Waveform signal storage
    Wave_Ram Sampling_38400_0(
        .clka(clk_ADC),             // input wire clka
        .wea(Rst),                  // input wire [0 : 0] wea
        .addra(Addr_Cnt),           // input wire [9 : 0] addra
        .dina(ADC_Data),            // input wire [7 : 0] dina
        .clkb(clk_system),          // input wire clkb
        .addrb(Read_Addr),          // input wire [15 : 0] addrb
        .doutb(ADC_Data_Out)        // output wire [7 : 0] doutb
    );
endmodule
