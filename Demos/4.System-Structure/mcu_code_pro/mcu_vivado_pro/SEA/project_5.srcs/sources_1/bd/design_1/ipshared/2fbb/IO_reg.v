module IO_reg(trisa,trisb,RA_out,RB_out,RA,RB,RA_in,RB_in);
    
   input [3:0]  trisa;
   input [7:0]  trisb;
   input [3:0]  RA_out;
   input [7:0]  RB_out;
   
   inout [3:0] RA;
   inout [7:0] RB;
   
   output [3:0] RA_in;
   output [7:0] RB_in;
   reg    [3:0] RA_in;
   reg    [7:0] RB_in;
   
   wire  wa0,wa1,wa2,wa3;
   wire  wb0,wb1,wb2,wb3,wb4,wb5,wb6,wb7;
   
   
   always@(RA or RB)
      begin
          RA_in<=RA;
          RB_in<=RB;
      end
      
      
      
    bufif0  (wa0,RA_out[0],trisa[0]);
    bufif0  (wa1,RA_out[1],trisa[1]);
    bufif0  (wa2,RA_out[2],trisa[2]); 
    bufif0  (wa3,RA_out[3],trisa[3]); 
    
    bufif0  (wb0,RB_out[0],trisb[0]);
    bufif0  (wb1,RB_out[1],trisb[1]);
    bufif0  (wb2,RB_out[2],trisb[2]);
    bufif0  (wb3,RB_out[3],trisb[3]);
    bufif0  (wb4,RB_out[4],trisb[4]);
    bufif0  (wb5,RB_out[5],trisb[5]);
    bufif0  (wb6,RB_out[6],trisb[6]);
    bufif0  (wb7,RB_out[7],trisb[7]);  
      
      
  assign RA={wa3,wa2,wa1,wa0};
  assign RB={wb7,wb6,wb5,wb4,wb3,wb2,wb1,wb0}; 
  
  
  
  endmodule   
      
   
