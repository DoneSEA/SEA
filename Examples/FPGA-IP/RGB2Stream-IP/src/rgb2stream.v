`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/27 10:51:02
// Design Name: 
// Module Name: rgb2stream
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


module rgb2stream(
    input rgb_VSYNC,
    input rgb_HSYNC,
    input rgb_HREF,
    input areset_n,
    input [23:0] rgb_data,
    output [23:0] axis_m_tdata,
    output reg axis_m_tuser,
    output axis_m_tvalid,
    output reg axis_m_tlast,
    output [2:0]axis_m_tstrb,
    output [2:0]axis_m_tkeep,
    input axis_m_tready,
    input aclk
    );
    reg [10:0] row_counter;
    reg [10:0] col_counter;
    reg [10:0] read_counter;
    reg isLegalFrame;
    wire fifo_ren;
    wire fifo_wen;
    assign axis_m_tstrb = 3'b111;
    assign axis_m_tkeep = 3'b111;
    assign fifo_wen = rgb_HREF & isLegalFrame;
    assign data_read = axis_m_tready & axis_m_tvalid;
//##############################################################################
    fifo_generator_0 output_fifo
    (
        .clk(aclk),
        .srst(!areset_n),
        .din(rgb_data),
        .wr_en(fifo_wen),
        .rd_en(axis_m_tready),
        .dout(axis_m_tdata),
        .valid(axis_m_tvalid)
    );
//##############################################################################

    always @ ( posedge aclk)
    begin
        if(!areset_n) isLegalFrame <= 0;
        else
        begin
            if(rgb_VSYNC) isLegalFrame <= 1;
            else isLegalFrame <= isLegalFrame; 
        end
    end
    
    always @ (posedge aclk)
    begin
        if((!areset_n) | rgb_VSYNC | row_counter == 1080) row_counter <= 0;
        else
        begin
            if(col_counter == 1919) row_counter<= row_counter + 1;
            else row_counter <= row_counter;
        end
    end
    
    always @ (posedge aclk)
    begin
        if((!areset_n) | rgb_HSYNC | rgb_VSYNC) col_counter <= 0;
        else
        begin
            if(fifo_wen) col_counter <= col_counter + 1;
            else col_counter <= col_counter;
        end
    end
    
    always @ (posedge aclk)
    begin
        if((!areset_n) | rgb_VSYNC) axis_m_tuser<=1;
        else 
        begin
            if( data_read ) axis_m_tuser <= 0; 
            else axis_m_tuser <= axis_m_tuser;
        end
    end
    
    always @ (posedge aclk)
    begin
            if((!areset_n) | rgb_VSYNC | rgb_HSYNC) axis_m_tlast <= 0;
            else
            begin
                if(read_counter == 1919) axis_m_tlast <= 1;
                else if( data_read) axis_m_tlast <= 0;
                else axis_m_tlast <= axis_m_tlast; 
            end
    end
    
    always @ (posedge aclk)
    begin
        if((!areset_n) | rgb_VSYNC | rgb_HSYNC) read_counter <= 0;
        else
        begin 
            if(data_read) read_counter <= read_counter + 1;
            else read_counter <= read_counter;
        end
    end
    
endmodule
