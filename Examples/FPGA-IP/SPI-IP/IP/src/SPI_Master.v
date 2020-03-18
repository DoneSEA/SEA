`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/30 14:38:27
// Design Name: 
// Module Name: SPI_Master
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
//SPI Host
module SPI_Master(
    input clk_100MHz,
    input Rst,
    input En,
    input Busy,
    input MISO,
    input [7:0]Data,
    output SCK,
    output MOSI,
	output reg CS=1,
	output reg ACK=0
);
    //Defining SPI transmission status
    parameter IDLE=0;        //Waiting state.
    parameter CS_L=1;        //Selected state
    parameter SEND_DATA=2;   //Transfer data status
    parameter END=3;         //End state
    //Defining the division factor
    parameter SPI_CLK='d100000;
    parameter Factor='d100_000_000/SPI_CLK;
    //Defining data transfer counters
    reg [3:0]Data_Cnt=0;
    //Defining state
    reg [4:0]State_Current=0;
    reg [4:0]State_Next=0;
    //Define register data buffer
    reg [7:0]Data_Buffer=0;
    //Data output
    assign MOSI=Data_Buffer[7];
    //Divided to generate 1MHz clock
    Clk_Division SCK_Generator(
        .clk_100MHz(clk_100MHz),    // input wire clk_100MHz
        .clk_mode(Factor),          // input wire [30 : 0] clk_mode
        .clk_out(SCK)               // output wire clk_out
    );
    //State transition
    always@(posedge SCK or negedge Rst)
        begin
            if(!Rst)
                State_Current=0;
            else 
                State_Current=State_Next;
        end
   
    always@(*)
        begin
            case(State_Current)
                IDLE:if(En) State_Next=CS_L;else State_Next=State_Current;
                CS_L:State_Next=SEND_DATA;
                SEND_DATA:if(Data_Cnt==7) State_Next=END;else State_Next=State_Current;
                END:if(!En&MISO) State_Next=IDLE;else State_Next=CS_L;
                default:State_Next=IDLE;
            endcase
        end
    //Generate an interrupt signal
    always@(posedge clk_100MHz or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                ACK<=0;
            else if(State_Current==END)
                ACK<=1;
            else 
                ACK<=0;
        end
    //Generate chip select signal
    always@(posedge SCK or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                CS<=1;
            else if(State_Current==CS_L||State_Current==SEND_DATA)
                CS<=0;
            else
                CS<=1;
        end
    //Data transmission count
    always@(posedge SCK or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Data_Cnt<=0;
            else if(State_Current==SEND_DATA)
                Data_Cnt<=Data_Cnt+1;
            else if(State_Current==IDLE||State_Current==END)
                Data_Cnt<=0;
        end
    //Generate MOSI signal
    always@(negedge SCK or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Data_Buffer<=0;
            else if(State_Current==SEND_DATA||Data_Cnt==7)
                Data_Buffer<={Data_Buffer[6:0],Data_Buffer[7]};
            else
                Data_Buffer<=Data;
        end
endmodule
