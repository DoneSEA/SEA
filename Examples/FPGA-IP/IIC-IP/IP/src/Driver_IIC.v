`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/16 20:57:24
// Design Name: 
// Module Name: Driver_IIC
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

module Driver_IIC(
    input clk, 
    input Rst,
    input   [7:0]Addr,
    input   [15:0]Reg_Addr,
    input   [7:0]Data,
    input   IIC_Write,
    input   IIC_Read,
    output  reg[7:0]IIC_Read_Data=0,
    output  IIC_Busy,
    input Reg_2Addr,        //Whether it is a dual register address, 0 is a single address, 1 is a double address
    output  IIC_SCL,
    input   IIC_SDA_In,
    output reg SDA_Dir=0,   //Control data direction, high level for data output
    output reg SDA_Out=0    //Output Data
    );
    
    //SCL frequency division coefficient
    //Generate IIC clock  100M/100K = 1000
    parameter  SCL_SUM = 13'd1000;
    
    reg  [13:0]     scl_cnt=0;
    always @ (posedge clk or negedge Rst)
    begin
        if(Rst == 1'b0)
            scl_cnt <= 13'd0;
        else if(scl_cnt < (SCL_SUM - 1))
            scl_cnt <= scl_cnt + 1;
        else
            scl_cnt <= 13'd0;
    end 
    
    
    //Different clock stages
    assign  IIC_SCL = Rst&(scl_cnt <= (SCL_SUM >> 1)-1);                   //Initially high
    wire    scl_hs = (scl_cnt == 13'd0);                                  //scl high start
    wire    scl_hc = (scl_cnt == ((SCL_SUM >> 1)-(SCL_SUM >> 2))-1);      //scl high center
    wire    scl_ls = (scl_cnt == (SCL_SUM >> 1)-1);                       //scl low start
    wire    scl_lc = (scl_cnt == ((SCL_SUM >> 1)+(SCL_SUM >> 2))-1);      //scl low center
    
    
    
    //IIC state machine control signal               
    reg     iicwr_req=0;                                            //IIC write request signal, active high
    reg     iicrd_req=0;                                            //IIC read request signal, active high
    reg     [2:0]   bcnt=0;
    wire    [7:0]   slave_addr_w = Addr;                            //Slave address, write data
    wire    [7:0]   slave_addr_r = Addr|8'h01;                      //Slave address, read data
    wire    [7:0]   reg_addr = Reg_Addr[7:0];                       //Register address, lower 8 bits
    wire    [7:0]   reg_H_addr=Reg_Addr[15:8];                      //Register address, high 8 bits
    wire    [7:0]   iic_wrdb = Data;                                //Data to be sent
    wire            iic_wr_en = IIC_Write;                          //Write enable
    wire            iic_rd_en = IIC_Read;                           //Read enable
    
    //****************************************************************************
    //Read and write enable rising edge signal
    reg     iic_wr_en_r0,iic_wr_en_r1;
    reg     iic_rd_en_r0,iic_rd_en_r1;
    reg [7:0]read_data=0;
    always @  (posedge clk or negedge Rst)
    begin
        if(Rst == 1'b0)
        begin
            iic_wr_en_r0 <= 1'b0;
            iic_wr_en_r1 <= 1'b0;
        end 
        else
        begin
            iic_wr_en_r0 <= iic_wr_en;
            iic_wr_en_r1 <= iic_wr_en_r0;
        end 
    end 
    wire    iic_wr_en_pos = (~iic_wr_en_r1 && iic_wr_en_r0);    //Write enable rising edge
    
    always @  (posedge clk or negedge Rst)
    begin
        if(Rst == 1'b0)
        begin
            iic_rd_en_r0 <= 1'b0;
            iic_rd_en_r1 <= 1'b0;
        end 
        else
        begin
            iic_rd_en_r0 <= iic_rd_en;
            iic_rd_en_r1 <= iic_rd_en_r0;
        end 
    end 
    wire    iic_rd_en_pos = (~iic_rd_en_r1 && iic_rd_en_r0);    //Read enable rising edge
    //****************************************************************************
    //IIC status
    parameter       IDLE      = 5'd0, 
                    START0      = 5'd1,
                    WRSADDR0    = 5'd2,
                    ACK0        = 5'd3,
                    WRRADDR     = 5'd4,
                    ACK1        = 5'd5,
                    WRDATA      = 5'd6,
                    ACK2        = 5'd7,
                    STOP        = 5'd8,
                    START1      = 5'd9,
                    WRSADDR1    = 5'd10,
                    ACK3        = 5'd11,
                    RDDATA      = 5'd12,
                    NOACK       = 5'd13,
                    WRRADDR_H   = 5'd14,
                    ACK4        = 5'd15;
    
    //State jump
    reg [4:0]   c_state;
    reg [4:0]   n_state;
    
    always @ (posedge clk or negedge Rst)
    begin
        if(Rst == 1'b0)
            c_state <= IDLE;
        else
            c_state <= n_state;
    end 
    
    //Combinational logic trigger
    always @ (*)
    begin
        case(c_state)
            IDLE:       //initialization
            begin
                if(((iicwr_req == 1'b1)||(iicrd_req == 1'b1))&&(scl_hc == 1'b1))
                    n_state = START0;
                else
                    n_state = IDLE;
            end 
    
            START0:     //Start
            begin
                if(scl_lc == 1'b1)
                    n_state = WRSADDR0;
                else
                    n_state = START0;
            end 
    
            WRSADDR0:   //Write slave address
            begin
                if((scl_lc == 1'b1)&&(bcnt == 3'd0))
                    n_state = ACK0;
                else
                    n_state = WRSADDR0;
            end 
    
            ACK0:       //Receiving a response
            begin
                if(scl_lc == 1'b1)
                    begin
                        if(Reg_2Addr)
                            n_state=WRRADDR_H;
                        else
                            n_state = WRRADDR;
                    end
                else
                    n_state = ACK0;
            end 
            WRRADDR_H:    //Write register address
                begin
                    if((scl_lc == 1'b1)&&(bcnt == 3'd0))
                        n_state = ACK4;
                    else
                        n_state = WRRADDR_H;
                end 
        
            ACK4:       //Receiving a response
                begin
                    if(scl_lc == 1'b1)
                    begin
                        if(iicwr_req == 1'b1)
                            n_state = WRRADDR;
                        else if(iicrd_req == 1'b1)
                            n_state = START1;
                        else
                            n_state = IDLE;
                    end 
                    else
                        n_state = ACK4;
                end
            WRRADDR:    //Write register address
            begin
                if((scl_lc == 1'b1)&&(bcnt == 3'd0))
                    n_state = ACK1;
                else
                    n_state = WRRADDR;
            end 
    
            ACK1:       //Receiving a response
            begin
                if(scl_lc == 1'b1)
                begin
                    if(iicwr_req == 1'b1)
                        n_state = WRDATA;
                    else if(iicrd_req == 1'b1)
                        n_state = START1;
                    else
                        n_state = IDLE;
                end 
                else
                    n_state = ACK1;
            end 
    
            //**************
            //Write data
            WRDATA:
            begin
                if((scl_lc == 1'b1)&&(bcnt == 3'd0))
                    n_state = ACK2;
                else
                    n_state = WRDATA;
            end 
    
            ACK2:   //Receiving a response
            begin
                if(scl_lc == 1'b1)
                    n_state = STOP;
                else
                    n_state = ACK2;
            end 
    
            //**************
            //Reading data process
            START1:
            begin
                if(scl_lc == 1'b1)
                    n_state = WRSADDR1;
                else
                    n_state = START1;
            end 
    
            WRSADDR1:
            begin
                if((scl_lc == 1'b1)&&(bcnt == 3'd0))
                    n_state = ACK3;
                else
                    n_state = WRSADDR1;
            end 
    
            ACK3:   //Receiving a response    
            begin
                if(scl_lc == 1'b1)
                    n_state = RDDATA;
                else
                    n_state = ACK3;
            end 
    
            RDDATA:
            begin
                if((scl_lc == 1'b1)&&(bcnt == 3'd0))
                    n_state = NOACK;
                else
                    n_state = RDDATA;
            end
    
            NOACK:  
            begin
                if(scl_lc == 1'b1)
                    n_state = STOP;
                else
                    n_state = NOACK;
            end 
            //**************
    
            STOP:
            begin   
                if(scl_lc == 1'b1)
                    n_state = IDLE;
                else
                    n_state = STOP;
            end 
    
            default:  n_state = IDLE;  
        endcase 
    end 
    
    
    //Counter control
    always @ (posedge clk or negedge Rst)
    begin
        if(Rst == 1'b0)
            bcnt <= 3'd0;
        else
        begin
            case (n_state)
                WRSADDR0,WRRADDR,WRRADDR_H,WRDATA,WRSADDR1:
                begin
                    if(scl_lc == 1'b1)
                        bcnt <= bcnt + 1;    
                end 
                RDDATA:
                begin
                    if(scl_hc)
                        bcnt <= bcnt + 1;
                end
                default: bcnt <= 3'd0;
            endcase 
        end 
    end 
    
    //Control data output
    always @ (posedge clk or negedge Rst)
    begin
        if(Rst == 1'b0)
        begin
            SDA_Dir <= 1'b1;
            SDA_Out <= 1'b1;
        end 
        else
        begin
            case (n_state)
                IDLE:
                begin
                    SDA_Dir <= 1'b1;
                    SDA_Out <= 1'b1;
                end 
                NOACK:
                begin
                    SDA_Dir <= 1'b1;
                    SDA_Out <= 1'b0;
                end
                START0:
                begin
                    SDA_Dir <= 1'b1;
                    SDA_Out <= 1'b0;          //After entering the start state, the data is pulled low
                end 
    
                START1:
                begin
                    SDA_Dir <= 1'b1;
                    if(scl_lc == 1'b1)
                        SDA_Out <= 1'b1;
                    else if(scl_hc == 1'b1)
                        SDA_Out <= 1'b0;
                end 
    
    
                WRSADDR0:
                begin
                    SDA_Dir <= 1'b1;
                    if(scl_lc == 1'b1)
                        SDA_Out <= slave_addr_w[7-bcnt];
                end 
    
                WRSADDR1:
                begin
                    SDA_Dir <= 1'b1;
                    if(scl_lc == 1'b1)
                        SDA_Out <= slave_addr_r[7-bcnt];
                end 
    
    
                ACK0,ACK1,ACK2,ACK3,ACK4:  SDA_Dir <= 1'b0;      //Receiving bus data
    
                WRRADDR_H:
                begin
                    SDA_Dir <= 1'b1;
                    if(scl_lc == 1'b1)
                        SDA_Out <= reg_H_addr[7-bcnt];
                end
                WRRADDR:
                begin
                    SDA_Dir <= 1'b1;
                    if(scl_lc == 1'b1)
                        SDA_Out <= reg_addr[7-bcnt];
                end 
    
                WRDATA:
                begin
                    SDA_Dir <= 1'b1;
                    if(scl_lc == 1'b1)
                        SDA_Out <= iic_wrdb[7-bcnt];
                end 
    
                RDDATA:
                begin
                    SDA_Dir <= 1'b0;
                    if(scl_hc&&!SDA_Dir)
                        IIC_Read_Data[7-bcnt] <= IIC_SDA_In;
                end 
    
                STOP:
                begin
                    SDA_Dir <= 1'b1;
                    if(scl_lc == 1'b1)
                        SDA_Out <= 1'b0;
                    else if(scl_hc == 1'b1)
                        SDA_Out <= 1'b1;
                end 
    
            endcase 
        end 
    end 
    wire iic_ack = (c_state == STOP) && scl_hc; //IIC operation response, active high
    //Determine the read and write process flags
    always @ (posedge clk or negedge Rst)
    begin
        if(Rst == 1'b0)
            iicwr_req <= 1'b0;
        else
        begin
            if(iic_wr_en_pos == 1'b1)
                iicwr_req <= 1'b1;
            else if(iic_ack == 1'b1)            //End of IIC process
                iicwr_req <= 1'b0;    
        end 
    end 
    
    always @ (posedge clk or negedge Rst)
    begin
        if(Rst == 1'b0)
            iicrd_req <= 1'b0;
        else
        begin
            if(iic_rd_en_pos == 1'b1)
                iicrd_req <= 1'b1;
            else if(iic_ack == 1'b1)            //End of IIC process
                iicrd_req <= 1'b0;    
        end 
    end 
    
    //Always busy when requested, busy ending after completing the process
    assign  IIC_Busy = (c_state==STOP)&&!scl_lc;

endmodule
