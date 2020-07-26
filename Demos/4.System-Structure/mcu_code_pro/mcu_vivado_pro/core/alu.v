module alu(w,b,alu_c2,reset,status_c,deco_bbb,z,dc,c,yi,skip,
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
		     
		      clrwdt,

		      tris,
		     
		      movlw,
		      iorlw,
		      andlw,
		      xorlw,
		      retlw);
    
    input [7:0] w;
    input [7:0] b;
    input alu_c2;
    input reset;
    input status_c;//状态位的C位
    input [2:0]deco_bbb;
    
    output z,dc,c;
    output [7:0]yi;
    output skip;
    
    reg    skip;
    reg    z,dc,c;
    reg    [7:0]yi;
    reg    c_reg;
    reg    [3:0]yi_dc;
    
    input   //nop,
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
		      //sleep,
		      clrwdt,

		      tris,
		      retlw,
		      //call,
		      //goto,
		      movlw,
		      iorlw,
		      andlw,
		      xorlw;
		      
		      
		      
always@(posedge alu_c2 or negedge reset)

   if(reset==0) 
         begin
             yi=0;
             z=0;
             dc=0;
             c=0;
             skip=0;
         end
   else

 begin
   
      if(movwf) 
         begin
            yi=w;
         end
      
      if(clrw)
        begin
           yi=8'b0000_0000;
           z=1'b1; 
            
        end            
      if(clrf)
         begin
             yi=8'b0000_0000;
             z=1'b1;
         end
         
      if(subwf)
         begin
              
             {c,yi}={1'b1,b}-{1'b0,w};
             {dc,yi_dc}={1'b1,b[3:0]}-{1'b0,w[3:0]};
     
             if(yi==0)  z=1'b1;
             else       z=1'b0; 
             
         end
             
      if(decf)
         begin
             
              {c_reg,yi}={1'b0,b-8'b0000_0001};
              
              if(yi==0)  z=1'b1;
              else       z=1'b0; 
              
         end
    
     
     
    if(andwf)
         begin
                 
             yi=w&b;   
             
             if(yi==0)  z=1;
             else       z=0  ; 
             
         end
        
      
             
      if(xorwf)
         begin
        
                 
               yi=w^b;
               
               if(yi==0)  z=1;
               else       z=0   ; 
               
         end               
    
         
         

      if(addwf)
         begin
             
                 {c,yi}={1'b0,b}+{1'b0,w};
                 {dc,yi_dc}={1'b0,b[3:0]}+{1'b0,w[3:0]}; 
                  
                  if(yi==0)  z=1;
                  else      z=0; 
             
         end  
        
      if(iorwf)
         begin 
             
             yi=w|b;
             
             if(yi==1'b0)  z=1;
             else          z=0; 
             
         end
    
      if(movf)
           begin
            
               yi=b;
            
               if(yi==0)   z=1;
               else        z=0;
            
            end  
         
      if(comf) 
            begin
                  
                  
                 yi=~b;
                 
                 if(yi==0)  z=1;
                 else       z=0; 
              
            end  
            
            
       if(incf)
          begin
             
                
              yi=b+8'b0000_0001;
              
               if(yi==0)  z=1;
               else       z=0; 
              
          end  
          
          
       if(decfsz)
          begin
 
              {c_reg,yi}={1'b0,b-8'b0000_0001};
              if(yi==0) skip<=1;
              else      skip<=0;
        
          end
          
          
       if(rrf)
             begin
                
                
               {c,yi}={b[0],status_c,b[7:1]};//循环右移
              
               
             end       
               
            
       if(rlf)
             begin
             
                {c,yi}={b,status_c}; 
                
             end 
             
             
       if(swapf)
             begin
             
                 
                 yi={b[3:0],b[7:4]};//交换高低位
              
               
              
            end      
                  
       if(incfsz)
             begin
                
                 
                 yi=b+8'b0000_0001;//加1为零则跳
                 
                 if(yi==0) skip<=1;
                 else     skip<=0;
                   
              end
              
              
        if(bcf)//不改变z
           begin
               case(deco_bbb)
                   3'b000:  yi<={b[7:1],1'b0};
                   3'b001:  yi<={b[7:2],1'b0,b[0]};
                   3'b010:  yi<={b[7:3],1'b0,b[1:0]};
                   3'b011:  yi<={b[7:4],1'b0,b[2:0]};
                   3'b100:  yi<={b[7:5],1'b0,b[3:0]};
                   3'b101:  yi<={b[7:6],1'b0,b[4:0]};
                   3'b110:  yi<={b[7],1'b0,b[5:0]};
                   3'b111:  yi<={1'b0,b[6:0]};
               endcase 
           end 
           
        if(bsf)//不改变z
           begin
                case(deco_bbb)
                   3'b000:  yi<={b[7:1],1'b1};
                   3'b001:  yi<={b[7:2],1'b1,b[0]};
                   3'b010:  yi<={b[7:3],1'b1,b[1:0]};
                   3'b011:  yi<={b[7:4],1'b1,b[2:0]};
                   3'b100:  yi<={b[7:5],1'b1,b[3:0]};
                   3'b101:  yi<={b[7:6],1'b1,b[4:0]};
                   3'b110:  yi<={b[7],1'b1,b[5:0]};
                   3'b111:  yi<={1'b1,b[6:0]};
               endcase
           end   
               
        if(btfsc) 
           begin       
                if(b[deco_bbb]==0) skip=1;
                else               skip=0;
           end          
               
        if(btfss)
           begin
              if(b[deco_bbb]===1) skip=1;
              else                skip=0;
              
          end  
          
          
        if(option)
           begin
              yi=w;
           end
           
       if(clrwdt)
          begin
             yi=0;
          end
          
       if(tris)
          begin
             yi=w;
          end 
          
       if(movlw)
          begin
             yi=b;
          end
          
       if(iorlw)
          begin
             yi=w|b;
             if(yi==0) z=1;
             else      z=0;
             
          end   
          
       if(andlw)
          begin
             yi=w&b;
             if(yi==0)  z=1;
             else       z=0;
             
          end 
          
          
       if(xorlw)
          begin
             yi=w^b;
             if(yi==0)  z=1;
             else       z=0;
           end 
           
       if(retlw)
          begin
             yi<=b;
          end    
           
             
  end                   
          
          
  
 
    
endmodule
