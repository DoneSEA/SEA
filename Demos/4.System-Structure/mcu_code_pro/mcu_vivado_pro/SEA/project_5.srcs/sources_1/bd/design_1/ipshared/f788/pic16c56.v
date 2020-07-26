module pic16c56(mclr,osc1,romdata,osc2,romaddr,RA,RB,c3);
    
input   mclr;
input   osc1;
input  [11:0] romdata;
output   osc2;
output  [9:0] romaddr;
output  c3;
inout   [3:0] RA;
inout   [7:0] RB;


wire    [7:0] k;
wire    [8:0]	longk;
wire    	     d;
wire		  [2:0] bbb;
wire    [4:0]	f;
wire    [7:0]	fsr;
wire    [4:0]	fsel;
wire    [3:0] RA_in;
wire    [7:0]	RB_in;
wire    [7:0] yi;
wire    [7:0] b;
wire    [7:0] w;
wire    [7:0] RB_out;
wire    [3:0]	RA_out;
wire    [7:0] rtccount;
wire    [7:0] status;
		      
wire    [7:0]	option_reg;
wire    [7:0]	wdt_reg;

wire  		      status_c;
wire    [3:0]	trisa;
wire    [7:0]	trisb;
		      
wire mclr;
wire c1;
wire nop;
wire movwf;
wire clrw;
wire clrf;
wire subwf;    
wire decf;     
wire andwf;
wire xorwf;
wire addwf;
wire iorwf;
wire movf;
wire comf;
wire incf;
wire decfsz;
wire rrf;
wire rlf;
wire swapf;
wire incfsz;
wire bcf;
wire bsf;
wire btfsc;
wire btfss;
wire option;
wire sleep;
wire clrwdt;
wire tris;
wire retlw;
wire call;
wire goto;
wire movlw;
wire iorlw;
wire andlw;
wire xorlw;  
wire z;
wire dc;
wire c; 
wire skip;
wire c2;


    
    
decoder  A1(
            c1,
            romdata,
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
		      k,
		      longk,
		      d,
		      bbb,
		      f,
		      fsr,
		      fsel);
		      
distribute  A2(
            mclr,
            c1,
            c2,
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
		      k,
		      fsel,
		      RA_in,
		      RB_in,
		      d,
		      yi,
		      skip,
		      longk,
		      b,
		      w,
		      RB_out,
		      RA_out,
		      rtccount,
		      romaddr,
		      status,
		      option_reg,
		      wdt_reg,
		      fsr,
		      status_c,
		      trisa,
		      trisb);
		      
		      
alu  A3(w,b,c2,mclr,status_c,bbb,z,dc,c,yi,skip,
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
		      
IO_reg A4(trisa,trisb,RA_out,RB_out,RA,RB,RA_in,RB_in);

timer  A5(osc1, mclr, c1, c2, c3,osc2);	



	      	      		      
		      
		      
    
    
    
endmodule
