`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/23 18:37:08
// Design Name: 
// Module Name: Driver_Gyro
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

//Register address:L,H
//Temperature:20h,21h
//Gyro_X:22h,23h
//Gyro_Y:24h,25h
//Gyro_Z:26h,27h
//Mag_X:66h,67h
//Mag_Y:68h,69h
//Mag_Z:6Ah,6Bh
//Gyro driver
module Driver_Gyro(
    input clk_100MHz,
    input clk_10MHz,
    input IIC_Busy,
    input Enable_Gyro,
    input [7:0]IIC_Data,
    input Ctrl_Temp_Out,
    input Ctrl_Gyro_Out,
    input Ctrl_Mag_Out,
    output reg[7:0]Addr=8'hd6,
    output reg [15:0]Reg_Addr=16'd10,
    output reg [7:0]Reg_Data=8'h70,
    output [15:0]Temp_Data,
    output [15:0]Gyro_Data_X,
    output [15:0]Gyro_Data_Y,
    output [15:0]Gyro_Data_Z,
    output [15:0]Mag_Data_X,
    output [15:0]Mag_Data_Y,
    output [15:0]Mag_Data_Z,
    output IIC_Write,
    output IIC_Read,
    output reg Reg_2Addr=0,
    output reg Ctrl_IIC=0
    );
    //Defining state
    parameter State_Init=0;
    parameter State_Temp=1;
    parameter State_Gyro=2;
    parameter State_Mag=3;
    parameter State_Stop=4;
   
    //State parameter
    reg [3:0]Init_State=0;      //Write state
    reg Temp_State=0;           //Temperature state
    reg [2:0]Gyro_State=0;      //Gyro state
    reg [2:0]Mag_State=0;       //Mag state
    reg [3:0]Current_State=0;   //Driver state
    reg [3:0]Next_State=0;      //Driver state
    reg Enable=0;               //Trigger start
    reg Write_Flag=0;           //Write request flag
    reg Read_Flag=0;            //Read request flag
    reg [3:0]Req_R_Cnt=0;       //Request signal count
    reg [3:0]Req_W_Cnt=0;       //Request signal count
    //Gyro data
    reg [15:0]Temp_Data_FIFO=0;                 //Temperature data
    reg [15:0]Gyro_Data_X_FIFO=0;               //Attitude angle data
    reg [15:0]Gyro_Data_Y_FIFO=0;               //Attitude angle data
    reg [15:0]Gyro_Data_Z_FIFO=0;               //Attitude angle data
    reg [15:0]Mag_Data_X_FIFO=0;                //Magnetometer data
    reg [15:0]Mag_Data_Y_FIFO=0;                //Magnetometer data
    reg [15:0]Mag_Data_Z_FIFO=0;                //Magnetometer data
    
    //Status flag
    reg Flag_State_Init=0;
    reg Flag_State_Temp=0;
    reg Flag_State_Gyro=0;
    reg Flag_State_Mag=0;
    //Read and write request
    reg Write_Req=0;
    reg Read_Req=0;
    //Clock
    wire clk_Read;
    wire clk_Write;
    Clk_Division Clk_Division0(
      .clk_100MHz(clk_100MHz),  // input wire clk_100MHz
      .clk_mode(100000),        // input wire [30 : 0] clk_mode
      .clk_out(clk_Read)        // output wire clk_out
    );
    
    Clk_Division Clk_Division1(
      .clk_100MHz(clk_100MHz),  // input wire clk_100MHz
      .clk_mode(100),           // input wire [30 : 0] clk_mode
      .clk_out(clk_Write)       // output wire clk_out
    );
    //Data outputs
    assign Temp_Data=Temp_Data_FIFO;
    assign Gyro_Data_X=Gyro_Data_X_FIFO;
    assign Gyro_Data_Y=Gyro_Data_Y_FIFO;
    assign Gyro_Data_Z=Gyro_Data_Z_FIFO;
    assign Mag_Data_X=Mag_Data_X_FIFO;
    assign Mag_Data_Y=Mag_Data_Y_FIFO;
    assign Mag_Data_Z=Mag_Data_Z_FIFO;
    //Read and write enable connection
    assign IIC_Write=Write_Flag;
    assign IIC_Read=Read_Flag;
    //State transfer
    always@(posedge clk_10MHz or negedge Enable_Gyro)
        begin
            //Low level reset
            if(!Enable_Gyro)
                Current_State<=State_Init;
            else
                Current_State<=Next_State;
        end
    //Total state machine
    always@(*)
        begin
            Next_State=Current_State;
            case(Current_State)
                State_Init:
                    begin
                        if(Flag_State_Init)
                            begin
                                if(Ctrl_Temp_Out)Next_State=State_Temp;
                                else if(Ctrl_Gyro_Out)Next_State=State_Gyro;
                                else if(Ctrl_Mag_Out)Next_State=State_Mag;
                                else Next_State=State_Stop;
                            end
                         else
                            begin
                                Enable=#100000000 1;
                                Ctrl_IIC=1;
                            end
                    end
                State_Temp:
                    if(Flag_State_Temp)
                        begin
                            if(Ctrl_Gyro_Out)Next_State=State_Gyro;
                            else if(Ctrl_Mag_Out)Next_State=State_Mag;
                            else if(Ctrl_Temp_Out)Next_State=State_Temp;
                            else Next_State=State_Stop;
                        end
                State_Gyro:
                    if(Flag_State_Gyro)
                        begin
                            if(Ctrl_Mag_Out)Next_State=State_Mag;
                            else if(Ctrl_Temp_Out)Next_State=State_Temp;
                            else if(Ctrl_Gyro_Out)Next_State=State_Gyro;
                            else Next_State=State_Stop;
                        end
                State_Mag:
                    if(Flag_State_Mag)
                        begin
                            if(Ctrl_Temp_Out)Next_State=State_Temp;
                            else if(Ctrl_Gyro_Out)Next_State=State_Gyro;
                            else if(Ctrl_Mag_Out)Next_State=State_Mag;
                            else Next_State=State_Stop;
                        end
                State_Stop:begin Enable=0;Ctrl_IIC=0;end
            endcase
        end
    //Read
    always@(posedge clk_Read or negedge IIC_Busy)
        begin
            if(Enable)
                begin
                    if(Flag_State_Init)
                        begin
                            if(!IIC_Busy)
                                Read_Req=1;
                            else
                                Read_Req=0;
                            if(Read_Req)
                                begin
                                    Read_Flag<=1;
                                    Req_R_Cnt<=0;
                                end
                            if(Read_Flag)
                                begin
                                    if(Req_R_Cnt<10)
                                        Req_R_Cnt<=Req_R_Cnt+1;
                                    else                        
                                        Read_Flag<=0;
                                end
                        end
                    else
                        Read_Flag<=0;
                end
            else
                Read_Flag<=0;
        end
    //Read and write judgment
    always@(posedge clk_Write or negedge IIC_Busy)
        begin
            if(Enable)
                begin
                    if(!Flag_State_Init)
                        begin
                            if(!IIC_Busy)
                                Write_Req=1;
                            else
                                Write_Req=0;
                            if(Write_Req)
                                begin
                                    Write_Flag<=1;
                                    Req_W_Cnt<=0;
                                end
                            if(Write_Flag)
                                begin
                                    if(Req_W_Cnt<10)
                                        Req_W_Cnt<=Req_W_Cnt+1;
                                    else                        
                                        Write_Flag<=0;
                                end
                        end
                    else
                        Write_Flag<=0;
                end
           else
               Write_Flag<=0;
        end
    
    //IIC Transmit State Machine: Initialization
    always@(negedge IIC_Busy)
        begin
            //Initialization state
            if(Current_State==State_Init)
                begin
                    case(Init_State)
                        0:begin Reg_Addr<=16'd10;Reg_Data<=8'h70;Init_State<=Init_State+1;end
                        1:begin Reg_Addr<=16'd11;Reg_Data<=8'h4c;Init_State<=Init_State+1;end
                        2:begin Reg_Addr<=16'd12;Reg_Data<=8'h44;Init_State<=Init_State+1;end
                        3:begin Reg_Addr<=16'd13;Reg_Data<=8'h00;Init_State<=Init_State+1;end
                        4:begin Reg_Addr<=16'd14;Reg_Data<=8'h00;Init_State<=Init_State+1;end
                        5:begin Reg_Addr<=16'd15;Reg_Data<=8'h00;Init_State<=Init_State+1;end
                        6:begin Reg_Addr<=16'd16;Reg_Data<=8'h50;Init_State<=Init_State+1;end
                        7:begin Reg_Addr<=16'd17;Reg_Data<=8'h85;Init_State<=Init_State+1;end
                        8:begin Reg_Addr<=16'd18;Reg_Data<=8'h38;Init_State<=Init_State+1;end
                        9:begin Reg_Addr<=16'd19;Reg_Data<=8'h38;Init_State<=Init_State+1;end
                        10:begin Reg_Addr<=16'h000f;Reg_Data<=8'h00;Init_State<=Init_State+1;Flag_State_Init<=1;end
                        default:Flag_State_Init<=1;
                    endcase
                end
            //Read temperature status
            else if(Current_State==State_Temp)
                begin
                    if(!Temp_State)
                        begin
                            if(Ctrl_Mag_Out)Mag_Data_Z_FIFO[15:8]<=IIC_Data;
                            else if(Ctrl_Gyro_Out)Gyro_Data_Z_FIFO[15:8]<=IIC_Data;
                            Reg_Addr<=16'h0020;
                        end
                    else
                        begin
                            Flag_State_Temp<=1;
                            Reg_Addr<=16'h0021;
                            Temp_Data_FIFO[7:0]<=IIC_Data;
                        end
                    Flag_State_Gyro<=0;
                    Flag_State_Mag<=0;
                    Temp_State<=Temp_State+1;
                end
            //Read Gyro status
            else if(Current_State==State_Gyro)
                begin
                    Flag_State_Temp<=0;
                    Flag_State_Mag<=0;
                    case(Gyro_State)
                        0:begin Reg_Addr<=16'h0022;Gyro_State<=Gyro_State+1;if(Ctrl_Temp_Out)Temp_Data_FIFO[15:8]<=IIC_Data;else if(Ctrl_Mag_Out)Mag_Data_Y_FIFO[15:8]<=IIC_Data;end
                        1:begin Reg_Addr<=16'h0023;Gyro_State<=Gyro_State+1;Gyro_Data_X_FIFO[7:0]<=IIC_Data;end
                        2:begin Reg_Addr<=16'h0024;Gyro_State<=Gyro_State+1;Gyro_Data_X_FIFO[15:8]<=IIC_Data;end
                        3:begin Reg_Addr<=16'h0025;Gyro_State<=Gyro_State+1;Gyro_Data_Y_FIFO[7:0]<=IIC_Data;end
                        4:begin Reg_Addr<=16'h0026;Gyro_State<=Gyro_State+1;Gyro_Data_Y_FIFO[15:8]<=IIC_Data;end
                        5:begin Reg_Addr<=16'h0027;Gyro_State<=0;Flag_State_Gyro<=1;Gyro_Data_Z_FIFO[7:0]<=IIC_Data;end    
                    endcase
                end
            //Read Mag status
            else if(Current_State==State_Mag)
                begin
                    Flag_State_Temp<=0;
                    Flag_State_Gyro<=0;
                    case(Mag_State)
                        0:begin Reg_Addr<=16'h0066;Mag_State<=Mag_State+1;if(Ctrl_Temp_Out)Temp_Data_FIFO[15:8]<=IIC_Data;else if(Ctrl_Gyro_Out)Gyro_Data_Z_FIFO[15:8]<=IIC_Data;end
                        1:begin Reg_Addr<=16'h0067;Mag_State<=Mag_State+1;Mag_Data_X_FIFO[7:0]<=IIC_Data;end
                        2:begin Reg_Addr<=16'h0068;Mag_State<=Mag_State+1;Mag_Data_X_FIFO[15:8]<=IIC_Data;end
                        3:begin Reg_Addr<=16'h0069;Mag_State<=Mag_State+1;Mag_Data_Y_FIFO[7:0]<=IIC_Data;end
                        4:begin Reg_Addr<=16'h006A;Mag_State<=Mag_State+1;Mag_Data_Y_FIFO[15:8]<=IIC_Data;end
                        5:begin Reg_Addr<=16'h006B;Mag_State<=0;Flag_State_Mag<=1;Mag_Data_Z_FIFO[7:0]<=IIC_Data;end    
                    endcase
                end
        end
endmodule
