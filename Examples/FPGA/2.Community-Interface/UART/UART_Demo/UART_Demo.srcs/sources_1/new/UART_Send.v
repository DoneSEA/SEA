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
    input [15:0]Temp_Data,
    input [15:0]Gyro_Data_X,
    input [15:0]Gyro_Data_Y,
    input [15:0]Gyro_Data_Z,
    input [15:0]Mag_Data_X,
    input [15:0]Mag_Data_Y,
    input [15:0]Mag_Data_Z,
    output reg Tx_En=0,
    output reg[7:0]Send_Buffer=0
    );
    //Defining the sending status
    parameter State_Send_Temp=0;
    parameter State_Send_Gyro=1;
    parameter State_Send_Mag=2;
    
    //Defining the sending status
    reg [1:0]Send_State=0;
    reg [3:0]State_Temp_Cnt=0;
    reg [3:0]State_Gyro_Cnt=0;
    reg [3:0]State_Mag_Cnt=0;
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
                State_Send_Temp:
                    begin
                        case(State_Temp_Cnt)
                            0:begin Send_Buffer<=8'h55;State_Temp_Cnt<=State_Temp_Cnt+1;end
                            1:begin Send_Buffer<=8'hAA;State_Temp_Cnt<=State_Temp_Cnt+1;end
                            2:begin Send_Buffer<=8'h01;State_Temp_Cnt<=State_Temp_Cnt+1;end
                            3:begin Send_Buffer<=Temp_Data[15:8];State_Temp_Cnt<=State_Temp_Cnt+1;end
                            4:begin Send_Buffer<=Temp_Data[7:0];State_Temp_Cnt<=State_Temp_Cnt+1;end
                            5:begin Send_Buffer<=8'hAA;State_Temp_Cnt<=0;Send_State<=State_Send_Gyro;end
                        endcase
                    end
                State_Send_Gyro:
                    begin
                        case(State_Gyro_Cnt)
                            0:begin Send_Buffer<=8'h55;State_Gyro_Cnt<=State_Gyro_Cnt+1;end
                            1:begin Send_Buffer<=8'hAA;State_Gyro_Cnt<=State_Gyro_Cnt+1;end
                            2:begin Send_Buffer<=8'h02;State_Gyro_Cnt<=State_Gyro_Cnt+1;end
                            3:begin Send_Buffer<=Gyro_Data_X[15:8];State_Gyro_Cnt<=State_Gyro_Cnt+1;end
                            4:begin Send_Buffer<=Gyro_Data_X[7:0];State_Gyro_Cnt<=State_Gyro_Cnt+1;end
                            5:begin Send_Buffer<=Gyro_Data_Y[15:8];State_Gyro_Cnt<=State_Gyro_Cnt+1;end
                            6:begin Send_Buffer<=Gyro_Data_Y[7:0];State_Gyro_Cnt<=State_Gyro_Cnt+1;end
                            7:begin Send_Buffer<=Gyro_Data_Z[15:8];State_Gyro_Cnt<=State_Gyro_Cnt+1;end                          
                            8:begin Send_Buffer<=Gyro_Data_Z[7:0];State_Gyro_Cnt<=State_Gyro_Cnt+1;end
                            9:begin Send_Buffer<=8'hAA;State_Gyro_Cnt<=0;Send_State<=State_Send_Mag;end
                        endcase
                    end
                State_Send_Mag:
                    begin
                        case(State_Mag_Cnt)
                            0:begin Send_Buffer<=8'h55;State_Mag_Cnt<=State_Mag_Cnt+1;end
                            1:begin Send_Buffer<=8'hAA;State_Mag_Cnt<=State_Mag_Cnt+1;end
                            2:begin Send_Buffer<=8'h03;State_Mag_Cnt<=State_Mag_Cnt+1;end
                            3:begin Send_Buffer<=Mag_Data_X[15:8];State_Mag_Cnt<=State_Mag_Cnt+1;end
                            4:begin Send_Buffer<=Mag_Data_X[7:0];State_Mag_Cnt<=State_Mag_Cnt+1;end
                            5:begin Send_Buffer<=Mag_Data_Y[15:8];State_Mag_Cnt<=State_Mag_Cnt+1;end
                            6:begin Send_Buffer<=Mag_Data_Y[7:0];State_Mag_Cnt<=State_Mag_Cnt+1;end
                            7:begin Send_Buffer<=Mag_Data_Z[15:8];State_Mag_Cnt<=State_Mag_Cnt+1;end
                            8:begin Send_Buffer<=Mag_Data_Z[7:0];State_Mag_Cnt<=State_Mag_Cnt+1;end
                            9:begin Send_Buffer<=8'hAA;State_Mag_Cnt<=0;Send_State<=State_Send_Temp;end
                        endcase
                    end
               default:;
            endcase
        end
endmodule
