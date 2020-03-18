`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/13 13:58:34
// Design Name: 
// Module Name: Driver_HDMI
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
`define Video_Mode_1920_1080 0
`define Video_Mode_1280_720 1

module Driver_HDMI(
    input clk,                          //Clock
    input Rst,                          //Reset signal, low reset
    input Video_Mode,                   //Video format,0 is 1920*1080@60Hz,1 is 1280*720@60Hz
    input [23:0]RGB_In,                 //Input data
    output [23:0]RGB_Data,              //Output Data
    output reg RGB_HSync=0,            //Line signal
    output reg RGB_VSync=0,            //Field signal
    output reg RGB_VDE=0,              //Data valid signal
    output reg [11:0]Set_X=0,          //Image coordinate X
    output reg [11:0]Set_Y=0           //Image coordinate Y
    );
    localparam H_ACTIVE_1280_720 = 16'd1280;
    localparam H_FP_1280_720 = 16'd110;
    localparam H_SYNC_1280_720 = 16'd40;
    localparam H_BP_1280_720 = 16'd220; 
    localparam V_ACTIVE_1280_720 = 16'd720;
    localparam V_FP_1280_720     = 16'd5;
    localparam V_SYNC_1280_720  = 16'd5;
    localparam V_BP_1280_720    = 16'd20;
    localparam H_TOTAL_1280_720 = H_ACTIVE_1280_720 + H_FP_1280_720 + H_SYNC_1280_720 + H_BP_1280_720;
    localparam V_TOTAL_1280_720 = V_ACTIVE_1280_720 + V_FP_1280_720 + V_SYNC_1280_720 + V_BP_1280_720;
    
    localparam H_ACTIVE_1920_1080 = 16'd1920;
    localparam H_FP_1920_1080 = 16'd88;
    localparam H_SYNC_1920_1080 = 16'd44;
    localparam H_BP_1920_1080 = 16'd148; 
    localparam V_ACTIVE_1920_1080 = 16'd1080;
    localparam V_FP_1920_1080     = 16'd4;
    localparam V_SYNC_1920_1080  = 16'd5;
    localparam V_BP_1920_1080    = 16'd36;
    localparam H_TOTAL_1920_1080 = H_ACTIVE_1920_1080 + H_FP_1920_1080 + H_SYNC_1920_1080 + H_BP_1920_1080;
    localparam V_TOTAL_1920_1080 = V_ACTIVE_1920_1080 + V_FP_1920_1080 + V_SYNC_1920_1080 + V_BP_1920_1080;
    
    reg [11:0]H_ACTIVE=0;   //Line effective length (number of pixel clock cycles)
    reg [11:0]H_FP=0;       //Line sync front shoulder length
    reg [11:0]H_SYNC=0;     //Line sync length
    reg [11:0]H_BP=0;       //Line sync shoulder length
    reg [11:0]V_ACTIVE=0;   //Field effective length (number of rows)
    reg [11:0]V_FP=0;       //Field sync front shoulder length
    reg [11:0]V_SYNC= 0;    //Field sync length
    reg [11:0]V_BP=0;       //Field sync back shoulder length
    reg [11:0]H_TOTAL=0;    //Total length of line
    reg [11:0]V_TOTAL=0;    //Total length of field
    
    //Line, field signal count
    reg [11:0]HSync_Cnt=0;
    reg [11:0]VSync_Cnt=0;
    //Line, field effective signal
    reg H_De=0;
    reg V_De=0;
    
    //RGB signal connection
    assign RGB_Data=RGB_In;
    //Image X, Y coordinate acquisition
    always@(posedge clk or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                begin
                    Set_X<=0;
                    Set_Y<=0;
                end
            else
                begin
                    //When the line signal is valid, start to acquire the X coordinate
                    if(HSync_Cnt>=H_FP + H_SYNC + H_BP - 1)
                        Set_X <= HSync_Cnt-(H_FP + H_SYNC + H_BP - 1);
                    //When the field signal is valid, start to acquire the Y coordinate
                    if(VSync_Cnt>=V_FP + V_SYNC + V_BP - 1)
                        Set_Y<=VSync_Cnt-(V_FP + V_SYNC + V_BP - 1);
                end
        end
    //Image format acquisition
    always@(*)
        begin
            case(Video_Mode)
                `Video_Mode_1920_1080:
                    begin
                        H_ACTIVE=H_ACTIVE_1920_1080;   //Line effective length (number of pixel clock cycles)
                        H_FP=H_FP_1920_1080;           //Line sync front shoulder length
                        H_SYNC=H_SYNC_1920_1080;       //Line sync length
                        H_BP=H_BP_1920_1080;           //Line sync back shoulder length
                        V_ACTIVE=V_ACTIVE_1920_1080;   //Field effective length (number of rows)
                        V_FP=V_FP_1920_1080;           //Field sync front shoulder length
                        V_SYNC=V_SYNC_1920_1080;       //Field sync length
                        V_BP=V_BP_1920_1080;           //Field sync back shoulder length
                        H_TOTAL=H_TOTAL_1920_1080;     //Total length of line
                        V_TOTAL=V_TOTAL_1920_1080;     //Total length of field
                    end
                `Video_Mode_1280_720:
                    begin
                        H_ACTIVE=H_ACTIVE_1280_720;    //Line effective length (number of pixel clock cycles)
                        H_FP=H_FP_1280_720;            //Line sync front shoulder length
                        H_SYNC=H_SYNC_1280_720;        //Line sync length
                        H_BP=H_BP_1280_720;            //Line sync back shoulder length
                        V_ACTIVE=V_ACTIVE_1280_720;    //Field effective length (number of rows)
                        V_FP=V_FP_1280_720;            //Field sync front shoulder length
                        V_SYNC=V_SYNC_1280_720;        //Field sync length
                        V_BP=V_BP_1280_720;            //Field sync back shoulder length
                        H_TOTAL=H_TOTAL_1280_720;      //Total length of line
                        V_TOTAL=V_TOTAL_1280_720;      //Total length of field
                    end
            endcase
        end
    //Line signal count
    always@(posedge clk or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                HSync_Cnt<=0;
            else
                begin
                    //Line signal count to maximum value clear
                    if(HSync_Cnt==H_TOTAL-1)
                        HSync_Cnt<=0;
                    else
                        HSync_Cnt<=HSync_Cnt+1;
                end
        end
    //Field signal count
    always@(posedge clk or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                VSync_Cnt<=0;
            else
                begin
                    //When the line signal counts to H_FP-1, the field signal starts counting.
                    if(HSync_Cnt==H_FP-1)
                        begin
                            //Field signal count to maximum value clear
                            if(VSync_Cnt==V_TOTAL-1)
                                VSync_Cnt<=0;
                            else
                                VSync_Cnt<=VSync_Cnt+1;
                        end
                end
        end
    //Line signal is valid
    always@(posedge clk or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                H_De<=0;
            else
                begin
                    //When the line signal count satisfies one cycle, the line signal starts to be valid.
                    if(HSync_Cnt==H_FP + H_SYNC + H_BP - 1)
                        H_De<=1;
                    //When the line signal counts to the maximum value, the line signal starts to be invalid.
                    else if(HSync_Cnt==H_TOTAL-1)
                        H_De<=0;                    
                end
        end
    //Field signal is valid
    always@(posedge clk or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                V_De<=0;
            else
                begin
                    //When the line signal count is H_FP-1, that is, when line synchronization starts
                    if(HSync_Cnt==H_FP-1)
                        begin
                            //When the field signal count satisfies one cycle, the field signal is valid.
                            if(VSync_Cnt==V_FP + V_SYNC + V_BP - 1)
                                V_De<=1;
                            //When the field signal counts to the maximum value, the field signal starts to be invalid.
                            else if(VSync_Cnt==V_TOTAL-1)
                                V_De<=0;
                        end    
                end
        end
    //Data valid signal output
    always@(posedge clk or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                RGB_VDE<=0;
            else
                //Data valid signal output
                RGB_VDE<=H_De&V_De;                
        end  
    //Line signal output
    always@(posedge clk or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                RGB_HSync<=0;
            else
                begin
                    //When the line sync starts, the line signal starts to be high
                    if(HSync_Cnt==H_FP-1)
                        RGB_HSync<=1;
                    //When the line sync ends, the line signal starts to be low
                    else if(HSync_Cnt==H_FP + H_SYNC - 1)
                        RGB_HSync<=0;
                end                
        end   
    //Field signal output
    always@(posedge clk or negedge Rst)           
        begin
            //Low level reset
            if(!Rst)
                RGB_VSync<=0;
            else
                begin
                    //When line synchronization starts
                    if(HSync_Cnt==H_FP-1)
                        begin
                            //When the field sync starts, the field signal is high.
                            if(VSync_Cnt==V_FP-1)
                                RGB_VSync<=1;
                            //When the field sync ends, the field signal starts to be low
                            else if(VSync_Cnt==V_FP + V_SYNC - 1)
                                RGB_VSync<=0;
                        end
                end
        end
endmodule
