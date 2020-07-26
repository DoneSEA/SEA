/*

   本模块用来给 b寄存器 和 w寄存器 分配数值





*/


module distribute(reset,dis_c1,dis_c2,
            nop,
		      movwf,
		      clrw,
		      clrf,
		      subwf,    
		      decf,     

		      andwf,
		      xorwf,
		      addwf,
		      iorwf,
		      movf,
		      comf,
		      incf,
		      decfsz,
		      rrf,
		      rlf,
		      swapf,
		      incfsz,
		
		      bcf,
		      bsf,
		      btfsc,
		      btfss,
		
		      option,
		      sleep,
		      clrwdt,

		      tris,
		      retlw,
		      call,
		      goto,
		      movlw,
		      iorlw,
		      andlw,
		      xorlw,
		      z,dc,c,
		      deco_k,
		      deco_fsel,
		      RA_in,
		      RB_in,
		      deco_d,
		      alu_yi,
		      alu_skip,
		      deco_longk,
		      b,
		      w,
		      RB_out,
		      RA_out,
		      rtccount,
		      pc,
		      status,
		      option_reg,
		      wdt_reg,
		      frs_reg,
		      status_c,
		      trisa,
		      trisb);
    
    
   input    reset,dis_c1,dis_c2;
   input 	  nop,
		      movwf,
		      clrw,
		      clrf,
		      subwf,    
		      decf,     

		      andwf,
		      xorwf,
		      addwf,
		      iorwf,
		      movf,
		      comf,
		      incf,
		      decfsz,
		      rrf,
		      rlf,
		      swapf,
		      incfsz,
		
		      bcf,
		      bsf,
		      btfsc,
		      btfss,
		
		      option,
		      sleep,
		      clrwdt,

		      tris,
		      retlw,
		      call,
		      goto,
		      movlw,
		      iorlw,
		      andlw,
		      xorlw;
    
		      
	input  z,dc,c;	      
   input  [7:0] deco_k;
   input  [4:0] deco_fsel;
   
   input  [3:0] RA_in;
   input  [7:0] RB_in;
   
   input        deco_d;
   input  [7:0] alu_yi;
   input        alu_skip;
   input  [8:0] deco_longk;
   
   output  [7:0] b;
   output  [7:0] w;
   output  [7:0] RB_out;
   output  [3:0] RA_out;
   output  [7:0] rtccount;
   output  [9:0] pc;
   output  [7:0] status;
   output  [7:0] option_reg;
   output  [7:0] wdt_reg;
   output  [7:0] frs_reg;
   output        status_c;
   output  [3:0] trisa;
   output  [7:0] trisb;       
   
   
   reg          status_c;
   reg    [7:0] RB_out;
   reg    [3:0] RA_out; 
   reg    [7:0] b;
   reg    [7:0] w;
   reg    [7:0] rtccount;
   reg    [9:0] pc;
   reg    [7:0] status;
   reg    [7:0] option_reg;
   reg    [7:0] wdt_reg;
   reg    [7:0] frs_reg;
   reg    [7:0] regfile[31:7];  //25个普通数据寄存器RAM
   
   reg    [1:0] stacklevel;
   reg    [9:0] stack1,stack2;
   reg    [3:0] trisa;
   reg    [7:0] trisb; 
   
   
//用于调试所加的+++++++++++++++++++++++++++

reg [7:0]   regfile7,regfile8,regfile9,regfile10,regfile11,
            regfile12,regfile13,regfile14,regfile15,regfile16,
            regfile17,regfile18,regfile19,regfile20,regfile21,
            regfile22,regfile23,regfile24,regfile25,regfile26,
            regfile27,regfile28,regfile29,regfile30,regfile31;
            
always@(negedge  dis_c2 or negedge reset) 
            begin
                if(!reset)
                    begin
                        regfile7 <=  0;                                
                        regfile8 <=  0;                                
                        regfile9 <=  0;                               
                        regfile10<=  0;                               
                        regfile11<=  0;                               
                        regfile12<=  0;                               
                        regfile13<=  0;                                
                        regfile14<=  0;                                
                        regfile15<=  0;                                 
                        regfile16<=  0;                                 
                        regfile17<=  0;                                 
                        regfile18<=  0;                                 
                        regfile19<=  0;                                 
                        regfile20<=  0;                                 
                        regfile21<=  0;                                 
                        regfile22<=  0;                                 
                        regfile23<=  0;                                 
                        regfile24<=  0;                                 
                        regfile25<=  0;                                 
                        regfile26<=  0;                                 
                        regfile27<=  0;                                 
                        regfile28<=  0;                                 
                        regfile29<=  0;                                 
                        regfile30<=  0;                                 
                        regfile31<=  0;
                    end
                else
                    begin
                        regfile7 <=  regfile[  7   ];                                
                        regfile8 <=  regfile[  8   ];                                
                        regfile9 <=  regfile[  9   ];                               
                        regfile10<=  regfile[ 10   ];                               
                        regfile11<=  regfile[  11  ];                               
                        regfile12<=  regfile[  12  ];                               
                        regfile13<=  regfile[  13  ];                                
                        regfile14<=  regfile[  14  ];                                
                        regfile15<=  regfile[  15  ];                                 
                        regfile16<=  regfile[  16  ];                                 
                        regfile17<=  regfile[  17  ];                                 
                        regfile18<=  regfile[  18  ];                                 
                        regfile19<=  regfile[  19  ];                                 
                        regfile20<=  regfile[  20  ];                                 
                        regfile21<=  regfile[  21  ];                                 
                        regfile22<=  regfile[  22  ];                                 
                        regfile23<=  regfile[  23  ];                                 
                        regfile24<=  regfile[  24  ];                                 
                        regfile25<=  regfile[  25  ];                                 
                        regfile26<=  regfile[  26  ];                                 
                        regfile27<=  regfile[  27  ];                                 
                        regfile28<=  regfile[  28  ];                                 
                        regfile29<=  regfile[  29  ];                                 
                        regfile30<=  regfile[  30  ];                                 
                        regfile31<=  regfile[  31  ];
                    end
            end          
                
   
   
   
   
   
   
    
//********************************b寄存器的数值的分配开始************************************************    
always@(negedge dis_c1 or negedge reset ) //b寄存器的数值的分配
   if(reset==1'b0)
            begin 
               
            b<=8'b0000_0000;
               
            regfile[7]<=   8'b0000_0000;                                
            regfile[8]<=   8'b0000_0000;                                
            regfile[9]<=   8'b0000_0000;                               
            regfile[10]<=  8'b0000_0000;                          
            regfile[11]<=  8'b0000_0000;                           
            regfile[12]<=  8'b0000_0000;                               
            regfile[13]<=  8'b0000_0000;                              
            regfile[14]<=  8'b0000_0000;                               
            regfile[15]<=  8'b0000_0000;                               
            regfile[16]<=  8'b0000_0000;                                
            regfile[17]<=  8'b0000_0000;                               
            regfile[18]<=  8'b0000_0000;                               
            regfile[19]<=  8'b0000_0000;                                
            regfile[20]<=  8'b0000_0000;                             
            regfile[21]<=  8'b0000_0000;                                 
            regfile[22]<=  8'b0000_0000;                                 
            regfile[23]<=  8'b0000_0000;                               
            regfile[24]<=  8'b0000_0000;                                 
            regfile[25]<=  8'b0000_0000;                              
            regfile[26]<=  8'b0000_0000;                              
            regfile[27]<=  8'b0000_0000;                             
            regfile[28]<=  8'b0000_0000;                                
            regfile[29]<=  8'b0000_0000;                                 
            regfile[30]<=  8'b0000_0000;                                
            regfile[31]<=  8'b0000_0000;
            
            end          
               
               
               
               
               
   else if(movlw||iorlw||andlw||xorlw||retlw) 
              b<=deco_k;
              
              
   else if(deco_k[4:0]==5'b00001)           
      
              b<=rtccount;     //外部RTCC计数器
        
   else if(deco_k[4:0]==5'b00010)
   
              b<=pc[7:0];
              
   else if(deco_k[4:0]==5'b00011)
   
              b<=status;
              
   else if(deco_k[4:0]==5'b00100)
   
               b<=frs_reg;           
   
   else if(deco_k[4:0]==5'b00101)
   
              b<={4'b0000,RA_in};
              
   else if(deco_k[4:0]==5'b00110) 
   
              b<=RB_in; 
              
   else 
   
              b<=regfile[deco_fsel];  
              
              
              
              
 //******************************b寄存器的数值的分配结束*****************************************************                       
                                              
                         
  
//++++++++++++++++++++++++++++++++alu的计算结果yi的分配开始++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++  
  
   
 always@(negedge  dis_c2 or negedge reset) //alu的计算结果yi的分配
       if(reset==1'b0) 
             w<=8'b0000_0000;
             
             
       else if(movwf||clrw||clrf||subwf||decf||andwf||xorwf||addwf||iorwf||movf||
               comf||incf||rrf||rlf||swapf||decfsz||incfsz||retlw)
               begin
                  if(deco_d==0)  w<=alu_yi;
                  else if(retlw)      w<=alu_yi;
                  
                  else if((deco_k[4:0]!=5'b00010)&&(deco_k[4:0]!=5'b00011))
                        begin
                             if(deco_k[4:0]==5'b00001)           
      
                                  rtccount<=alu_yi;     //外部RTCC计数器
        
                 // else if(deco_k[4:0]==5'b00010)
   
                 //          pc[7:0]<=alu_yi;
              
                 // else if(deco_k[4:0]==5'b00011)
   
                 //          status<=alu_yi;
              
                           else if(deco_k[4:0]==5'b00100)
                           
                                 frs_reg<=alu_yi;
                                 
                           else if(deco_k[4:0]==5'b00101)
   
                                  RA_out<=alu_yi[3:0];
              
                           else if(deco_k[4:0]==5'b00110) 
   
                                  RB_out<=alu_yi; 
              
                           else 
   
                                  regfile[deco_fsel]<=alu_yi;   
                                   
                       end   
               
                end  
               
       
             
       else if(bcf||bsf)
             begin
                    
                        if((deco_k[4:0]!=5'b00010)&&(deco_k[4:0]!=5'b00011))
                           begin
                                if(deco_k[4:0]==5'b00001)  
                        
                                      rtccount<=alu_yi;
                      
                 //else if(deco_k[4:0]==5'b00010) 
                       
                //       pc[7:0]<=alu_yi;
                       
                 //else if(deco_k[4:0]==5'b00011)
   
                 //      status<=alu_yi; 
                 
                                else if(deco_k[4:0]==5'b00100)
                                
                                      frs_reg<=alu_yi;
                       
                                else if(deco_k[4:0]==5'b00101)
   
                                      RA_out<=alu_yi[3:0];
                       
                                else if(deco_k[4:0]==5'b00110) 
   
                                      RB_out<=alu_yi;
                       
                                else 
   
                                      regfile[deco_fsel]<=alu_yi;
                                      
                            end           
                       
                       
            end 
      else if(movlw||iorlw||andlw||xorlw)
		      begin
		         w<=alu_yi;
		      end         
           
            
            
            
            
            
             
//++++++++++++++++++++++++++++++++++++alu的计算结果yi的分配结束+++++++++++++++++++++++++++++++++++++++++++++++++                                   
       

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%将yi的结果存入option寄存器%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  always@(negedge  dis_c2 or negedge reset)
      if(reset==0) option_reg<=0;
      
      else if(option==1)
            option_reg<=alu_yi;





//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$将yi的置存入wdt寄存器$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$             
 always@(negedge dis_c2 or negedge reset)   
 if(reset)
 wdt_reg<= 0;
  else  if(clrwdt==1)
       wdt_reg<=alu_yi;
       
             
//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$将yi的置存入tris寄存器$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$             
             
 always@(negedge dis_c2 or negedge reset)
    if(reset==0)
          begin
             trisa<=4'b1111;
             trisb<=8'b1111_1111;
          end
           
    else if(tris)
       begin
          if(deco_k[2:0]==3'b101)
             trisa<=alu_yi[3:0];
             
          if(deco_k[2:0]==3'b110)
             trisb<=alu_yi;      
      end
      
      
      
      
      
//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@对状态位status的改变@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@      
   
always@(negedge dis_c2 or negedge reset)
 
if(reset==0)
   status<=0;
   
else 
   begin
       if((bsf||bcf)&&(deco_k[4:0]==5'b00011))
             status<=alu_yi;
             
       if(clrw||clrf||subwf||decf||andwf||xorwf||addwf||
          iorwf||movf||comf||incf||iorlw||andlw||xorlw)
             status[2]<=z;
             
       if(subwf||addwf)
             status[1:0]<={dc,c};
             
       if(rrf||rlf) 
             status[0]<=c;
             
    end
    
 always@(status[0])
       
       status_c<=status[0];  
    
    
  

	      
	

  
  
                             
 
 
//@@@@@@@@@@@@@@@@@@@@@@@@@@@对PC的改变及堆栈的操作@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   
   
always@(negedge dis_c2 or negedge reset)

      if(reset==0)
         begin
       
            pc=10'b11_1111_1111;
            stacklevel <= 2'b00;
	         stack1 <= 10'b0000_0000_00;
	         stack2 <= 10'b0000_0000_00; 
	         
	      end
     
     
      else if((movwf||clrw||clrf||subwf||decf||andwf||xorwf||addwf||iorwf||movf||
               comf||incf||rrf||rlf||swapf)&&deco_d&&(deco_k[4:0]==5'b00010))
               
               pc<={status[5],1'b0,alu_yi};
               
      else if((bcf||bsf)&&(deco_k[4:0]==5'b00010))
      
               pc<={status[5],1'b0,alu_yi};         
               
      else if(call) 
                
                   case(stacklevel)       
  
                          2'b00: begin
		                               stack1 <= pc+10'b0000_0000_01;
		                               stacklevel <= 2'b01;
		                               pc={status[5],1'b0,deco_k[7:0]};
	                              end
	                       2'b01:  begin
		                               stack2 <= pc+10'b0000_0000_01;
		                               stacklevel <= 2'b10;
		                               pc={status[5],1'b0,deco_k[7:0]};
	                                end
	      
	                       default: begin
		                               stack2 <= 2'b00;
		                               stack1 <= 2'b00;
		                               stacklevel <= 2'b00;
		                               pc=10'b11_1111_1111;
	                                end
	      
	                endcase
	                
	                
	                
	     else if(retlw) 
	                
	                case (stacklevel)
	                        2'b01: begin
		                            pc <= stack1;
		                            stacklevel <= 2'b00;
	                               end
	                        2'b10: begin
		                            pc <= stack2;
		                            stacklevel <=2'b01;
	                               end
	                 endcase       
	                  
        else if((alu_skip==1)&&(decfsz||incfsz||btfsc||btfss)) 
                    
                    pc<=pc+2;
                    
        else if(goto)
        
                    pc<={status[5],deco_longk}; 
                 
        else
                    pc<=pc+1;                               
           

      

             
  endmodule           
             
             
             
                   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
       
    
    
