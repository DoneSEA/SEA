`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/09 11:30:13
// Design Name: 
// Module Name: Driver_Csi_To_Dvp
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


module Driver_Csi_To_Dvp
#(parameter WIDTH = 12, HSIZE = 1280, HFP = 1390, HSP = 1430, HMAX = 1650, VSIZE = 720, VFP = 725, VSP = 730, VMAX = 750, HSPP = 0, VSPP = 0)
(
    input s_axis_aclk,
    input s_axis_tlast,
    input s_axis_tuser,
    input s_axis_tvalid,
    input [15:0] s_axis_tdata,
    output s_axis_tready,
    
    input vid_clk,

    output vid_hsync,
    output vid_vsync,
    output vid_active_video,
    output [7:0] vid_data,
    
    output reg [10:0] hdata,
    output reg [9:0] vdata
    );
    
    assign s_axis_tready = 1'b1;

    reg valid_r1 = 1'b0;
    reg valid_r2 = 1'b0;
    reg valid_neg = 1'b0;
    //Video Out
    reg frame_start = 1'b0;
    reg frame_start_r1 = 1'b0;
    reg frame_start_r2 = 1'b0;
    reg frame_start_pos = 1'b0;
    reg [10:0] addrb_r = 0;
    reg [3:0] unpack_cnt = 0;
    //Ram Control
    reg [9:0] addra_r = 0;
    wire clka = s_axis_aclk;
    wire wea = s_axis_tvalid;
    wire [9:0] addra = addra_r;
    wire [15:0] dina = s_axis_tdata;
    
    wire [10:0] addrb = addrb_r;
    wire [7:0] doutb;    
    wire clkb = vid_clk;
    //Camera In
    always @(posedge s_axis_aclk)
    begin
        valid_r1 <= s_axis_tvalid;
        valid_r2 <= valid_r1;
        valid_neg <= ~valid_r1 & valid_r2;
    end

    
    always@(posedge s_axis_aclk)
    begin
        if(s_axis_tuser)
            frame_start <= 1'b1;
        else if(s_axis_tlast)
            frame_start <= 1'b0;
        else;
    end

    always@(posedge vid_clk)
    begin
        frame_start_r1 <= frame_start;
        frame_start_r2 <= frame_start_r1;
        frame_start_pos <= ~frame_start_r2 & frame_start_r1;
    end
    
    always@(posedge vid_clk)
    begin
        if(frame_start_pos)
            hdata <= 0;
        else if(hdata == HMAX - 1)
            hdata <= 0;
        else
            hdata <= hdata + 1;
    end
    
    always@(posedge vid_clk)
    begin
        if(frame_start_pos)
            vdata <= 0;
        else if(hdata == HMAX - 1)
            if(vdata === VMAX - 1)
                vdata <= 0;
            else
                vdata <= vdata + 1;
        else;
    end
    
    assign addrb = addrb_r;

    always@(posedge vid_clk)
    begin
        if(hdata == HSIZE)
            unpack_cnt <= 0;
        else if(vid_active_video)
            if(unpack_cnt == 3)
                unpack_cnt <= 0;
            else
                unpack_cnt <= unpack_cnt + 1;
        else;
    end
    
    always@(posedge vid_clk)
    begin
        if(hdata == HSIZE)
            addrb_r <= 0;
        else if(vid_active_video)
            if(unpack_cnt == 3)
                addrb_r <= addrb_r + 2;
            else
                addrb_r <= addrb_r + 1;
        else;
    end
    
    assign vid_hsync = ((hdata >= HFP) && (hdata < HSP)) ? HSPP : !HSPP;
    assign vid_vsync =  ((vdata >= VFP) && (vdata < VSP)) ? VSPP : !VSPP;
    assign vid_active_video =  (hdata < HSIZE) & (vdata < VSIZE);
    assign vid_data = {doutb[7:0]};
    
    always @(posedge s_axis_aclk)
    begin
        if(valid_neg)
            addra_r <= 0;
        else if(wea)
            addra_r <= addra_r + 1;
        else;
    end
    
    blk_mem_gen_0 bram0 (
      .clka(clka),    // input wire clka
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [9 : 0] addra
      .dina(dina),    // input wire [15 : 0] dina
      .clkb(clkb),    // input wire clkb
      .addrb(addrb),  // input wire [10 : 0] addrb
      .doutb(doutb)  // output wire [7 : 0] doutb
    );
endmodule
