`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/24 20:21:12
// Design Name: 
// Module Name: UART_Send
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

//This is a routine for UART to send data, send temperature data, gyroscope data, magnetic field data.
module UART_Send(
    input clk_10MHz,
    input Tx_ACK,
    input Enable,
    input [15:0]Data0,
    input [15:0]Data1,
    input [15:0]Data2,
    input [15:0]Data3,
    input [15:0]Data4,
    input [15:0]Data5,
    input [15:0]Data6,
    output reg Tx_En=0,
    output reg[7:0]Send_Buffer=0
    );
    //Defining the sending status
    parameter State_Send_Data0=0;
    parameter State_Send_Data123=1;
    parameter State_Send_Data456=2;
    
    //Defining the sending status
    reg [1:0]Send_State=0;
    reg [3:0]State_Data0_Cnt=0;
    reg [3:0]State_Data123_Cnt=0;
    reg [3:0]State_Data456_Cnt=0;
    //Trigger pulse
    reg [1:0]Pulse_Init_Flag=0;
    //Give the rising edge of the sender
    always@(posedge clk_10MHz or posedge Tx_ACK)
        begin
            if(Tx_ACK)
                begin
                    Tx_En<=~Tx_En;
                    Pulse_Init_Flag<=2;
                end
            else if(Pulse_Init_Flag==0)
                begin
                    Tx_En<=0;
                    Pulse_Init_Flag<=1;
                end
            else if(Pulse_Init_Flag[0])
                begin
                    Tx_En<=1;
                    Pulse_Init_Flag<=0;
                end
            else
                Tx_En<=0;    
        end
    //send data
    always@(posedge Tx_ACK)
        begin
            case(Send_State)
                State_Send_Data0:
                    begin
                        case(State_Data0_Cnt)
                            0:begin Send_Buffer<=8'h55;State_Data0_Cnt<=State_Data0_Cnt+1;end
                            1:begin Send_Buffer<=8'hAA;State_Data0_Cnt<=State_Data0_Cnt+1;end
                            2:begin Send_Buffer<=8'h01;State_Data0_Cnt<=State_Data0_Cnt+1;end
                            3:begin Send_Buffer<=Data0[15:8];State_Data0_Cnt<=State_Data0_Cnt+1;end
                            4:begin Send_Buffer<=Data0[7:0];State_Data0_Cnt<=State_Data0_Cnt+1;end
                            5:begin Send_Buffer<=8'hAA;State_Data0_Cnt<=0;Send_State<=State_Send_Data123;end
                        endcase
                    end
                State_Send_Data123:
                    begin
                        case(State_Data123_Cnt)
                            0:begin Send_Buffer<=8'h55;State_Data123_Cnt<=State_Data123_Cnt+1;end
                            1:begin Send_Buffer<=8'hAA;State_Data123_Cnt<=State_Data123_Cnt+1;end
                            2:begin Send_Buffer<=8'h02;State_Data123_Cnt<=State_Data123_Cnt+1;end
                            3:begin Send_Buffer<=Data1[15:8];State_Data123_Cnt<=State_Data123_Cnt+1;end
                            4:begin Send_Buffer<=Data1[7:0];State_Data123_Cnt<=State_Data123_Cnt+1;end
                            5:begin Send_Buffer<=Data2[15:8];State_Data123_Cnt<=State_Data123_Cnt+1;end
                            6:begin Send_Buffer<=Data2[7:0];State_Data123_Cnt<=State_Data123_Cnt+1;end
                            7:begin Send_Buffer<=Data3[15:8];State_Data123_Cnt<=State_Data123_Cnt+1;end                          
                            8:begin Send_Buffer<=Data3[7:0];State_Data123_Cnt<=State_Data123_Cnt+1;end
                            9:begin Send_Buffer<=8'hAA;State_Data123_Cnt<=0;Send_State<=State_Send_Data456;end
                        endcase
                    end
                State_Send_Data456:
                    begin
                        case(State_Data456_Cnt)
                            0:begin Send_Buffer<=8'h55;State_Data456_Cnt<=State_Data456_Cnt+1;end
                            1:begin Send_Buffer<=8'hAA;State_Data456_Cnt<=State_Data456_Cnt+1;end
                            2:begin Send_Buffer<=8'h03;State_Data456_Cnt<=State_Data456_Cnt+1;end
                            3:begin Send_Buffer<=Data4[15:8];State_Data456_Cnt<=State_Data456_Cnt+1;end
                            4:begin Send_Buffer<=Data4[7:0];State_Data456_Cnt<=State_Data456_Cnt+1;end
                            5:begin Send_Buffer<=Data5[15:8];State_Data456_Cnt<=State_Data456_Cnt+1;end
                            6:begin Send_Buffer<=Data5[7:0];State_Data456_Cnt<=State_Data456_Cnt+1;end
                            7:begin Send_Buffer<=Data6[15:8];State_Data456_Cnt<=State_Data456_Cnt+1;end
                            8:begin Send_Buffer<=Data6[7:0];State_Data456_Cnt<=State_Data456_Cnt+1;end
                            9:begin Send_Buffer<=8'hAA;State_Data456_Cnt<=0;Send_State<=State_Send_Data0;end
                        endcase
                    end
               default:;
            endcase
        end
endmodule
