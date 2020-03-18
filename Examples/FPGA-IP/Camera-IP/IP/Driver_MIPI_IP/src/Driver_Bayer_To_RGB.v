`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/09 11:33:05
// Design Name: 
// Module Name: Driver_Bayer_To_RGB
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


module Driver_Bayer_To_RGB
#(parameter WIDTH = 12, HSIZE = 1280, HFP = 1390, HSP = 1430, HMAX = 1650, VSIZE = 720, VFP = 725, VSP = 730, VMAX = 750, HSPP = 0, VSPP = 0)
(
    input clk,
     
    input [7:0] data_in,
    input hsync_in,
    input vsync_in,
    input de_in,
    
    input [10:0] hdata,
    input [9:0] vdata,
    
    output hsync_out,
    output vsync_out,
    output de_out,
    output [23:0] data_out
    );
    //RGB Out
    localparam IDLE = 0;
    localparam IDLE_BG = 1;
    localparam PATTERN0 = 2;
    // R G R  
    // G B G
    // R G R
    localparam PATTERN1 = 3;
    // G R G 
    // B G B
    // G R G
    localparam IDLE_GR    = 4;
    localparam PATTERN2 = 5;
    // G B G
    // R G R
    // G B G
    localparam PATTERN3 = 6;
    // B G B
    // G R G
    // B G B
    localparam DELAY_LINE = 2;
    
    reg [9:0] color_r = 0;
    reg [9:0] color_g = 0;
    reg [9:0] color_b = 0;
    reg [3:0] read_state = 0;
    
    //Bayer In
    reg vsync_r1 = 0;
    reg vsync_r2 = 0;    
    reg de_r1 = 0;
    reg de_r2 = 0;
    reg de_r3 = 0;
    reg [7:0] data_in_r1 = 0;
    reg [7:0] data_in_r2 = 0;
    reg vsync_pos = 0;
    reg de_pos =  0;
    reg de_neg = 0;
    
    reg de_pos_r1 = 0;
    reg de_pos_r2 = 0;
    reg de_neg_r1 = 0;
    reg de_neg_r2 = 0;
    
    reg [11:0] col_cnt = 0;
    
    //RAM Instance    
    reg [2:0] wea = 1;
    wire wea0 = wea[0] & de_in;
    wire wea1 = wea[1] & de_in;
    wire wea2 = wea[2] & de_in;
    reg [10:0] addra;
    wire [7:0] dina = data_in;//{wea[2:0],1'b0,addra[3:0]};
    
    wire [10:0] addrb = addra;
    wire [7:0] bram0_doutb;
    wire [7:0] bram1_doutb;
    wire [7:0] bram2_doutb;
    
    //Delay 2 line and 6 pixel
    wire hsync_delay = ((hdata >= HFP) && (hdata < HSP)) ? HSPP : !HSPP;
    wire vsync_delay = ((vdata >= VFP + DELAY_LINE) && (vdata < VSP + DELAY_LINE)) ? VSPP : !VSPP;
    wire de_delay =  (hdata < HSIZE) & (vdata < VSIZE + DELAY_LINE) & (vdata > DELAY_LINE - 1);
    
    reg [7:0] hsync_delay_r = 0;
    reg [7:0] vsync_delay_r = 0;
    reg [7:0] de_delay_r = 0;
    
    //Kernel    
    reg [7:0] line0[2:0];
    reg [7:0] line1[2:0];
    reg [7:0] line2[2:0];
    assign data_out ={color_r[9:2],color_b[9:2],color_g[9:2]};

    always @(posedge clk)
    begin
    case(read_state)
    IDLE:begin
        if(de_pos_r2) begin
            read_state <= IDLE_BG;            
        end else begin
        end        
    end
    IDLE_BG:begin
        if(vsync_pos)
            read_state <= IDLE;
        else if(de_pos_r2)
            read_state <= PATTERN0;
    end
    PATTERN0:begin
        if(vsync_pos)
            read_state <= IDLE;
        else
            read_state <= PATTERN1;
        color_r <= line0[0] + line0[2] + line2[0] + line2[2];
        color_g <= line0[1] + line1[0] + line1[2] + line2[1];
        color_b <= {line1[1],2'b0};
    end
    PATTERN1:begin
        if(vsync_pos)
            read_state <= IDLE;
        else if(de_neg_r2)
            read_state <= IDLE_GR;
        else
            read_state <= PATTERN0;
        color_r <= {1'b0,line0[1],1'b0} + {1'b0,line2[1],1'b0};
        color_g <= {line1[1],2'b0};
        color_b <= {1'b0,line1[0],1'b0} + {1'b0,line1[2],1'b0};
    end
    IDLE_GR:begin
        if(vsync_pos)
            read_state <= IDLE;
        else if(de_pos_r2)
            read_state <= PATTERN2;
    end
    PATTERN2:begin
        if(vsync_pos)
            read_state <= IDLE_BG;
        else
            read_state <= PATTERN3;
        color_r <= {1'b0,line1[0],1'b0} + {1'b0,line1[2],1'b0};
        color_g <= {line1[1],2'b0};
        color_b <= {1'b0,line0[1],1'b0} + {1'b0,line2[1],1'b0};
    end
    PATTERN3:begin
        if(vsync_pos)
            read_state <= IDLE;
        else if(de_neg_r2)
            read_state <= IDLE_BG;
        else
            read_state <= PATTERN2;
        color_r <= {line1[1],2'b0};
        color_g <= line0[1] + line1[0] + line1[2] + line2[1];
        color_b <= line0[0] + line0[2] + line2[0] + line2[2];
    end  
    default:;
    endcase
    end
 
    always @(posedge clk)
    begin
        vsync_r1 <= vsync_in;
        vsync_r2 <= vsync_r1;
        vsync_pos <=  vsync_r1 & ~vsync_r2;
        
        de_r1 <= de_in;
        de_r2 <= de_r1;
        de_r3 <= de_r2;
        de_pos <=  de_r2 & ~de_r3;
        de_neg <= ~de_r2 & de_r3;
        
        de_pos_r1 <= de_pos;
        de_pos_r2 <= de_pos_r1;
        
        de_neg_r1 <= de_neg;
        de_neg_r2 <= de_neg_r1;        
        
        data_in_r1 <= dina;
        data_in_r2 <= data_in_r1;
    end
    
    
    always @(posedge clk)
    begin
        if(vsync_pos)
            wea <= 1;
        else if(de_neg)
            wea <= {wea[1:0], wea[2]};
    end
    
    always @(posedge clk)
    begin
        if(vsync_pos)
            col_cnt <= 0;
        else if(de_neg)
            col_cnt <= col_cnt + 1;
    end
    
    always @(posedge clk)
    begin
        if(vsync_pos)
            addra <= 0;
        else if(de_neg)
            addra <= 0;
        else if(de_in || de_delay)
            addra <= addra + 1;
    end
    
    
    blk_mem_gen_1 bram0 (
      .clka(clk),    // input wire clka
      .wea(wea0),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [10 : 0] addra
      .dina(dina),    // input wire [7 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(addrb),  // input wire [10 : 0] addrb
      .doutb(bram0_doutb)  // output wire [7 : 0] doutb
    );
    
    blk_mem_gen_1 bram1 (
      .clka(clk),    // input wire clka
      .wea(wea1),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [10 : 0] addra
      .dina(dina),    // input wire [7 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(addrb),  // input wire [10 : 0] addrb
      .doutb(bram1_doutb)  // output wire [7 : 0] doutb
    );
    
    blk_mem_gen_1 bram2 (
      .clka(clk),    // input wire clka
      .wea(wea2),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [10 : 0] addra
      .dina(dina),    // input wire [7 : 0] dina
      .clkb(clk),    // input wire clkb
      .addrb(addrb),  // input wire [10 : 0] addrb
      .doutb(bram2_doutb)  // output wire [7 : 0] doutb
    );
   
    always @(posedge clk)
    begin
        if(wea[0]) begin
            line0[0] <= bram1_doutb;
            line1[0] <= bram2_doutb;
            line2[0] <= data_in_r2;
        end else if(wea[1]) begin
            line0[0] <= bram2_doutb;
            line1[0] <= bram0_doutb;
            line2[0] <= data_in_r2;
        end else begin
            line0[0] <= bram0_doutb;
            line1[0] <= bram1_doutb;
            line2[0] <= data_in_r2;
        end
        line0[2] <= line0[1];
        line0[1] <= line0[0];
        line1[2] <= line1[1];
        line1[1] <= line1[0];
        line2[2] <= line2[1];
        line2[1] <= line2[0];
    end
    
    always @(posedge clk)
    begin
        hsync_delay_r <= {hsync_delay_r[6:0], hsync_delay};
        vsync_delay_r <= {vsync_delay_r[6:0], vsync_delay};
        de_delay_r <= {de_delay_r[6:0], de_delay};
    end
    
    assign hsync_out =  hsync_delay_r[5];
    assign vsync_out = vsync_delay_r[5];
    assign de_out = de_delay_r[5];
    
endmodule
