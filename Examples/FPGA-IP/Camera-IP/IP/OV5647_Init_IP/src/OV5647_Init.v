`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 15:35:39
// Design Name: 
// Module Name: OV5647_Init
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


module OV5647_Init(
    input clk_10MHz,
    input IIC_Busy,
    output reg[7:0]Addr=8'h36,
    output reg [15:0]Reg_Addr=16'h0100,
    output reg [7:0]Reg_Data=8'h00,
    output IIC_Write,
    output reg Reg2Addr=1,
    output reg Ctrl_IIC=0
    );
    //Write status
    reg [8:0]Write_State=0;
    //Trigger start
    reg Enable=0;
    //Write request
    reg Write_Req=0;
    //Write request flag
    reg Write_Flag=0;
    //Request signal count
    reg [3:0]Req_Cnt=0;
    initial
        begin
            Enable=#10000000 1;
            Reg_Addr<=16'h0100;
            Reg_Data<=8'h00;
            Addr=(8'h36<<1)&(8'hfe);
            Ctrl_IIC=1;
        end
    assign IIC_Write=Write_Flag;
    always@(posedge clk_10MHz or negedge IIC_Busy)
        begin
            if(Enable)
                begin
                    if(!IIC_Busy)
                        Write_Req=1;
                    else
                        Write_Req=0;
                    if(Write_Req)
                        begin
                            Write_Flag<=1;
                            Req_Cnt<=0;
                        end
                    if(Write_Flag)
                        begin
                            if(Req_Cnt<10)
                                Req_Cnt<=Req_Cnt+1;
                            else
                                begin                         
                                    Write_Flag=0;
                                end
                        end
                end
           else
                Write_Flag=0;
        end      
    //IIC transmission state machine
    always@(negedge IIC_Busy)
        begin
            case(Write_State)
                0:begin Reg_Addr<=16'h0100;Reg_Data<=8'h00;Write_State<=Write_State+1;end
                1:begin Reg_Addr<=16'h0103;Reg_Data<=8'h01;Write_State<=Write_State+1;end
                2:begin Reg_Addr<=16'h3000;Reg_Data<=8'h00;Write_State<=Write_State+1;end
                3:begin Reg_Addr<=16'h3001;Reg_Data<=8'h00;Write_State<=Write_State+1;end
                4:begin Reg_Addr<=16'h3002;Reg_Data<=8'h00;Write_State<=Write_State+1;end
                5:begin Reg_Addr<=16'h3016;Reg_Data<=8'h08;Write_State<=Write_State+1;end
                6:begin Reg_Addr<=16'h3017;Reg_Data<=8'he0;Write_State<=Write_State+1;end
                7:begin Reg_Addr<=16'h3018;Reg_Data<=8'h44;Write_State<=Write_State+1;end
                8:begin Reg_Addr<=16'h301c;Reg_Data<=8'hf8;Write_State<=Write_State+1;end
                9:begin Reg_Addr<=16'h301d;Reg_Data<=8'hf0;Write_State<=Write_State+1;end
                10:begin Reg_Addr<=16'h3034;Reg_Data<=8'h0a;Write_State<=Write_State+1;end
                11:begin Reg_Addr<=16'h3035;Reg_Data<=8'h21;Write_State<=Write_State+1;end
                12:begin Reg_Addr<=16'h3036;Reg_Data<=8'h90;Write_State<=Write_State+1;end
                13:begin Reg_Addr<=16'h303c;Reg_Data<=8'h11;Write_State<=Write_State+1;end
                14:begin Reg_Addr<=16'h3106;Reg_Data<=8'hf5;Write_State<=Write_State+1;end
                15:begin Reg_Addr<=16'h3600;Reg_Data<=8'h37;Write_State<=Write_State+1;end
                16:begin Reg_Addr<=16'h3612;Reg_Data<=8'h59;Write_State<=Write_State+1;end
                17:begin Reg_Addr<=16'h3618;Reg_Data<=8'h00;Write_State<=Write_State+1;end
                18:begin Reg_Addr<=16'h3630;Reg_Data<=8'h2e;Write_State<=Write_State+1;end
                19:begin Reg_Addr<=16'h3632;Reg_Data<=8'he2;Write_State<=Write_State+1;end
                20:begin Reg_Addr<=16'h3633;Reg_Data<=8'h23;Write_State<=Write_State+1;end
                21:begin Reg_Addr<=16'h3634;Reg_Data<=8'h44;Write_State<=Write_State+1;end
                22:begin Reg_Addr<=16'h3636;Reg_Data<=8'h06;Write_State<=Write_State+1;end
                23:begin Reg_Addr<=16'h3620;Reg_Data<=8'h64;Write_State<=Write_State+1;end
                24:begin Reg_Addr<=16'h3621;Reg_Data<=8'he0;Write_State<=Write_State+1;end
                25:begin Reg_Addr<=16'h3703;Reg_Data<=8'h5a;Write_State<=Write_State+1;end
                26:begin Reg_Addr<=16'h3704;Reg_Data<=8'ha0;Write_State<=Write_State+1;end
                27:begin Reg_Addr<=16'h3705;Reg_Data<=8'h1a;Write_State<=Write_State+1;end
                28:begin Reg_Addr<=16'h3708;Reg_Data<=8'h64;Write_State<=Write_State+1;end
                29:begin Reg_Addr<=16'h3709;Reg_Data<=8'h52;Write_State<=Write_State+1;end
                30:begin Reg_Addr<=16'h370b;Reg_Data<=8'h60;Write_State<=Write_State+1;end
                31:begin Reg_Addr<=16'h370c;Reg_Data<=8'h0f;Write_State<=Write_State+1;end
                32:begin Reg_Addr<=16'h3715;Reg_Data<=8'h78;Write_State<=Write_State+1;end
                33:begin Reg_Addr<=16'h3717;Reg_Data<=8'h01;Write_State<=Write_State+1;end
                34:begin Reg_Addr<=16'h3731;Reg_Data<=8'h02;Write_State<=Write_State+1;end
                35:begin Reg_Addr<=16'h3801;Reg_Data<=8'h00;Write_State<=Write_State+1;end
                36:begin Reg_Addr<=16'h3802;Reg_Data<=8'h00;Write_State<=Write_State+1;end
                37:begin Reg_Addr<=16'h3803;Reg_Data<=8'hfa;Write_State<=Write_State+1;end
                38:begin Reg_Addr<=16'h3804;Reg_Data<=8'h0a;Write_State<=Write_State+1;end
                39:begin Reg_Addr<=16'h3805;Reg_Data<=8'h3f;Write_State<=Write_State+1;end                   
                40:begin Reg_Addr<=16'h3806;Reg_Data<=8'h06;Write_State<=Write_State+1;end
                41:begin Reg_Addr<=16'h3807;Reg_Data<=8'ha9;Write_State<=Write_State+1;end
                42:begin Reg_Addr<=16'h3808;Reg_Data<=8'h05;Write_State<=Write_State+1;end//05
                43:begin Reg_Addr<=16'h3809;Reg_Data<=8'h00;Write_State<=Write_State+1;end//00
                44:begin Reg_Addr<=16'h380a;Reg_Data<=8'h02;Write_State<=Write_State+1;end//02
                45:begin Reg_Addr<=16'h380b;Reg_Data<=8'hd0;Write_State<=Write_State+1;end//d0
                46:begin Reg_Addr<=16'h380c;Reg_Data<=8'h0a;Write_State<=Write_State+1;end//0a
                47:begin Reg_Addr<=16'h380d;Reg_Data<=8'h50;Write_State<=Write_State+1;end//50
                48:begin Reg_Addr<=16'h380e;Reg_Data<=8'h02;Write_State<=Write_State+1;end//02
                49:begin Reg_Addr<=16'h380f;Reg_Data<=8'hee;Write_State<=Write_State+1;end//ee                    
                50:begin Reg_Addr<=16'h3811;Reg_Data<=8'h10;Write_State<=Write_State+1;end
                51:begin Reg_Addr<=16'h3813;Reg_Data<=8'h04;Write_State<=Write_State+1;end
                52:begin Reg_Addr<=16'h3814;Reg_Data<=8'h31;Write_State<=Write_State+1;end
                53:begin Reg_Addr<=16'h3815;Reg_Data<=8'h31;Write_State<=Write_State+1;end
                54:begin Reg_Addr<=16'h3821;Reg_Data<=8'h07;Write_State<=Write_State+1;end
                55:begin Reg_Addr<=16'h3820;Reg_Data<=8'h41;Write_State<=Write_State+1;end
                56:begin Reg_Addr<=16'h3827;Reg_Data<=8'hec;Write_State<=Write_State+1;end
                57:begin Reg_Addr<=16'h3a08;Reg_Data<=8'h01;Write_State<=Write_State+1;end
                58:begin Reg_Addr<=16'h3a09;Reg_Data<=8'h27;Write_State<=Write_State+1;end
                59:begin Reg_Addr<=16'h3a0a;Reg_Data<=8'h00;Write_State<=Write_State+1;end                    
                60:begin Reg_Addr<=16'h3a0b;Reg_Data<=8'hf6;Write_State<=Write_State+1;end
                61:begin Reg_Addr<=16'h3a0d;Reg_Data<=8'h04;Write_State<=Write_State+1;end
                62:begin Reg_Addr<=16'h3a0e;Reg_Data<=8'h03;Write_State<=Write_State+1;end
                63:begin Reg_Addr<=16'h3a0f;Reg_Data<=8'h58;Write_State<=Write_State+1;end
                64:begin Reg_Addr<=16'h3a10;Reg_Data<=8'h50;Write_State<=Write_State+1;end
                65:begin Reg_Addr<=16'h3a1b;Reg_Data<=8'h58;Write_State<=Write_State+1;end
                66:begin Reg_Addr<=16'h3a1e;Reg_Data<=8'h50;Write_State<=Write_State+1;end
                67:begin Reg_Addr<=16'h3a11;Reg_Data<=8'h60;Write_State<=Write_State+1;end
                68:begin Reg_Addr<=16'h3a1f;Reg_Data<=8'h28;Write_State<=Write_State+1;end
                69:begin Reg_Addr<=16'h3a18;Reg_Data<=8'h00;Write_State<=Write_State+1;end                    
                70:begin Reg_Addr<=16'h3a19;Reg_Data<=8'hf8;Write_State<=Write_State+1;end
                71:begin Reg_Addr<=16'h3b07;Reg_Data<=8'h0c;Write_State<=Write_State+1;end
                72:begin Reg_Addr<=16'h3c01;Reg_Data<=8'h80;Write_State<=Write_State+1;end
                73:begin Reg_Addr<=16'h3f05;Reg_Data<=8'h02;Write_State<=Write_State+1;end
                74:begin Reg_Addr<=16'h3f06;Reg_Data<=8'h10;Write_State<=Write_State+1;end
                75:begin Reg_Addr<=16'h3f01;Reg_Data<=8'h0a;Write_State<=Write_State+1;end
                76:begin Reg_Addr<=16'h4001;Reg_Data<=8'h02;Write_State<=Write_State+1;end
                77:begin Reg_Addr<=16'h4004;Reg_Data<=8'h02;Write_State<=Write_State+1;end
                78:begin Reg_Addr<=16'h4000;Reg_Data<=8'h09;Write_State<=Write_State+1;end
                79:begin Reg_Addr<=16'h4050;Reg_Data<=8'h6e;Write_State<=Write_State+1;end                    
                80:begin Reg_Addr<=16'h4051;Reg_Data<=8'h8f;Write_State<=Write_State+1;end
                81:begin Reg_Addr<=16'h4837;Reg_Data<=8'h24;Write_State<=Write_State+1;end
                82:begin Reg_Addr<=16'h5000;Reg_Data<=8'h06;Write_State<=Write_State+1;end
                83:begin Reg_Addr<=16'h5001;Reg_Data<=8'h01;Write_State<=Write_State+1;end
                84:begin Reg_Addr<=16'h5002;Reg_Data<=8'h41;Write_State<=Write_State+1;end
                85:begin Reg_Addr<=16'h5003;Reg_Data<=8'h08;Write_State<=Write_State+1;end
                86:begin Reg_Addr<=16'h5a00;Reg_Data<=8'h08;Write_State<=Write_State+1;end
                87:begin Reg_Addr<=16'h0100;Reg_Data<=8'h01;Write_State<=Write_State+1;end 
                default:begin Enable<=0;Ctrl_IIC<=0;end
            endcase
        end
endmodule
