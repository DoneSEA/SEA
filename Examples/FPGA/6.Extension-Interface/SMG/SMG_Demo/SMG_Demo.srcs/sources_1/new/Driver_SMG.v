`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/11 17:14:32
// Design Name: 
// Module Name: Driver_SMG
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

//4-bit common anode digital tube driver
module Driver_SMG(
    input i_clk_50MHz,          
    input i_rst,
    input [15:0]i_data,
    input [3:0]i_point,
    output [3:0]o_bit,
    output [7:0]o_segement
    );
    //Crossover parameters
    parameter freq_factor=17'd100000;
   
    //ctrl clock
    wire clk;
    
    reg [3:0]bit_ctrl=4'b0111;          //bit signal control register        
    reg [3:0]segment_ctrl=0;            //segment signal control register
    reg [7:0]segment_data=8'b1111_1111; //segment signal data register for output
    reg point_ctrl=1;                   //1 means no point for display,otherwise is 0
    
    //Output signal wiring
    assign o_bit=bit_ctrl; 
    assign o_segement=segment_data;
    
    //Generate bit control signals
    always@(posedge clk or negedge i_rst)begin
        //low level reset
        if(!i_rst)begin
            bit_ctrl<=4'b1110;
        end
        else begin
            bit_ctrl<={bit_ctrl[2:0],bit_ctrl[3]};
        end
    end
    //bit control selection segment control
    always@(bit_ctrl)begin
        case(bit_ctrl) 
            4'b1110:begin segment_ctrl<=i_data[3:0];point_ctrl<=i_point[0];end
            4'b1101:begin segment_ctrl<=i_data[7:4];point_ctrl<=i_point[1];end
            4'b1011:begin segment_ctrl<=i_data[11:8];point_ctrl<=i_point[2];end
            4'b0111:begin segment_ctrl<=i_data[15:12];point_ctrl<=i_point[3];end
            default:begin segment_ctrl<=4'hf;point_ctrl<=1;end
        endcase
    end
    //Segment data decoding
    always@(segment_ctrl)begin
        case(segment_ctrl) 
            4'h0:segment_data<={point_ctrl,7'b100_0000};//0 
            4'h1:segment_data<={point_ctrl,7'b111_1001};//1 
            4'h2:segment_data<={point_ctrl,7'b010_0100};//2 
            4'h3:segment_data<={point_ctrl,7'b011_0000};//3 
            4'h4:segment_data<={point_ctrl,7'b001_1001};//4 
            4'h5:segment_data<={point_ctrl,7'b001_0010};//5 
            4'h6:segment_data<={point_ctrl,7'b000_0010};//6 
            4'h7:segment_data<={point_ctrl,7'b111_1000};//7 
            4'h8:segment_data<={point_ctrl,7'b000_0000};//8 
            4'h9:segment_data<={point_ctrl,7'b001_0000};//9 
            4'ha:segment_data<={point_ctrl,7'b000_1000};//a 
            4'hb:segment_data<={point_ctrl,7'b000_0011};//b 
            4'hc:segment_data<={point_ctrl,7'b100_0110};//c 
            4'hd:segment_data<={point_ctrl,7'b010_0001};//d 
            4'he:segment_data<={point_ctrl,7'b000_0111};//e
            4'hf:segment_data<={point_ctrl,7'b000_1110};//f
            default:segment_data<=8'b1111_1111;//0 
        endcase
    end
    //Divider instantiation
    Clk_Division Clk_Division0(
       .i_clk(i_clk_50MHz),
       .i_rst(i_rst),
       .i_clk_mode(freq_factor),
       .o_clk_out(clk)
       );
endmodule
