`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/27 14:54:44
// Design Name: 
// Module Name: stream2rgb
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


module stream2rgb(
    input aclk,
    input aresetn,
    input axis_s_tvalid,
    input axis_s_tuser,
    input [23:0] axis_s_tdata,
    output axis_s_tready,
    input axis_s_tlast,
    
    output rgb_HSYNC,
    output rgb_VSYNC,
    output rgb_VDE,
    output [23:0]rgb_DATA
    );
    reg isSyncronized;
    reg [10:0] col_counter;
    reg [10:0] row_counter;
    wire fifo_ren;
    wire fifo_wen;
    wire full;
    assign axis_s_tready = !full;
    assign fifo_ren = col_counter>=191 && col_counter<2111;
    assign fifo_wen = (isSyncronized & axis_s_tvalid & axis_s_tready) | (axis_s_tuser & axis_s_tvalid & axis_s_tready);
    assign rgb_VSYNC = row_counter<5;
    assign rgb_HSYNC = col_counter<44;
    assign rgb_VDE = col_counter>=192 && col_counter<2112 && row_counter >=41 && row_counter < 1121;
//##########################################
    fifo_generator_0 input_fifo
    (
        .clk(aclk),
        .srst(!aresetn),
        .din(axis_s_tdata),
        .wr_en(fifo_wen),
        .rd_en(fifo_ren),
        .dout(rgb_DATA),
        .full(full)
    );
//##############################################
    always @ (posedge aclk)
    begin
        if(!aresetn)isSyncronized <= 0;
        else
        begin
            if(axis_s_tuser & axis_s_tvalid & axis_s_tready & row_counter == 41) isSyncronized<=1;
            else isSyncronized <= isSyncronized;
        end
    end
    
    always @ (posedge aclk)
    begin
        if(!aresetn)row_counter <= 41;
        else
        begin
            if(row_counter<1124 & isSyncronized & col_counter == 2199) row_counter <= row_counter + 1;
            else if(row_counter == 1124) row_counter <= 0;
            else row_counter <= row_counter;
        end
    end
    
    always @ (posedge aclk)
    begin
        if(!aresetn)col_counter <= 0;
        else 
        begin
            if(col_counter<2199 & isSyncronized) col_counter <= col_counter + 1;
            else if(col_counter == 2199) col_counter <= 0;
            else col_counter <= col_counter;
        end
    end
    
    
endmodule
