/*


      本模块用来译码




*/

module decoder(
            decoder_c1,
            instruction,
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
		      
    input [7:0] fsr;
    output[4:0] fsel;
    reg   [4:0] fsel;
     
    input [11:0]instruction;
    input  decoder_c1;
    output  [7:0] k;
    output  [8:0] longk;
    output  d;
    output  [2:0]bbb;
    output  [4:0] f; 
    output 	nop,
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
    
   
   
   reg      [7:0] k;
   reg      [8:0] longk;
   reg      d;
   reg      [2:0] bbb;
   reg      [4:0] f;
   reg      nop,
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
    
    
    
    

    
   //面向字节操作指令 
   parameter 	NOP = 12'b0000_0000_0000;
   parameter 	MOVWF = 7'b0000_001;
   parameter 	CLRW = 12'b0000_0100_0000;
   parameter 	CLRF = 7'b0000_011;
   parameter 	SUBWF = 6'b0000_10;
   parameter 	DECF  = 6'b0000_11;
   parameter 	IORWF = 6'b0001_00;
   parameter 	ANDWF = 6'b0001_01;
   parameter 	XORWF = 6'b0001_10;
   parameter 	ADDWF = 6'b0001_11;
   parameter 	MOVF  = 6'b0010_00;
   parameter 	COMF  = 6'b0010_01;
   parameter 	INCF  = 6'b0010_10;
   parameter 	DECFSZ = 6'b0010_11;
   parameter 	RRF    = 6'b0011_00;
   parameter 	RLF    = 6'b0011_01;
   parameter 	SWAPF  = 6'b0011_10;
   parameter 	INCFSZ = 6'b0011_11;
   //面向位操作指令
   parameter 	BCF    = 4'b0100;
   parameter 	BSF    = 4'b0101;
   parameter 	BTFSC  = 4'b0110;
   parameter 	BTFSS  = 4'b0111;
   // 常数操作和控制类
   parameter 	OPTION = 12'b0000_0000_0010;
   parameter 	SLEEP  = 12'b0000_0000_0011;
   parameter 	CLRWDT = 12'b0000_0000_0100;
   //parameter 	TRIS   = 12'b0000_0000_0111;
   parameter 	RETLW  = 4'b1000;
   parameter 	CALL   = 4'b1001;
   parameter 	GOTO   = 3'b101;
   parameter 	MOVLW  = 4'b1100;
   parameter 	IORLW  = 4'b1101;
   parameter 	ANDLW  = 4'b1110;
   parameter 	XORLW  = 4'b1111;
   
   
 always@(posedge decoder_c1)    
    
   begin
   
   
    	nop <= (instruction[11:0] == NOP) ? 1 : 0;
    	movwf <= (instruction[11:5] == MOVWF) ? 1 : 0;
    	clrw <= (instruction[11:0] == CLRW) ? 1:0;
    	clrf <= (instruction[11:5] == CLRF) ? 1:0;
    	subwf <= (instruction[11:6] == SUBWF) ? 1:0;
    	decf <= (instruction[11:6] == DECF) ? 1:0;
   
    	andwf <= (instruction[11:6] == ANDWF) ? 1:0;
    	xorwf <= (instruction[11:6] == XORWF) ? 1:0;
    	addwf <= (instruction[11:6] == ADDWF) ? 1:0;
    	iorwf <= (instruction[11:6] == IORWF) ? 1:0;
    	movf <= (instruction[11:6] == MOVF) ? 1:0;
    	comf <= (instruction[11:6] == COMF) ? 1:0;
    	incf <= (instruction[11:6] == INCF) ? 1:0;
    	decfsz <= (instruction[11:6] == DECFSZ) ? 1:0;
    	rrf <= (instruction[11:6] == RRF) ? 1:0;
    	rlf <= (instruction[11:6] == RLF) ? 1:0;
    	swapf <= (instruction[11:6] == SWAPF) ? 1:0;
    	incfsz <= (instruction[11:6] == INCFSZ) ? 1:0;


    	bcf <= (instruction[11:8] == BCF) ? 1:0;
    	bsf <= (instruction[11:8] == BSF) ? 1:0;
    	btfsc <= (instruction[11:8] == BTFSC) ? 1:0;
    	btfss <= (instruction[11:8] == BTFSS) ? 1:0;

    	option <= (instruction[11:0] == OPTION) ? 1:0;
    	sleep <= (instruction[11:0] == SLEEP) ? 1:0;
    	clrwdt <= (instruction[11:0] == CLRWDT) ? 1:0;


    	tris <= ((instruction[11:0] == 12'b0000_0000_0101)||instruction[11:0]==12'b0000_0000_0110) ? 1:0;
    	retlw <= (instruction[11:8] == RETLW) ? 1:0;
    	call <= (instruction[11:8] == CALL) ? 1:0;
    	goto <= (instruction[11:9] == GOTO) ? 1:0;
    	movlw <= (instruction[11:8] == MOVLW) ? 1:0;
    	iorlw <= (instruction[11:8] == IORLW) ? 1:0;
    	andlw <= (instruction[11:8] == ANDLW) ? 1:0;
    	xorlw <= (instruction[11:8] == XORLW) ? 1:0;
   
   
   
   
   
    k  <= instruction[7:0];
    longk <= instruction[8:0];
    d <= instruction[5];
    f<=instruction[4:0];
    bbb<=instruction[7:5];
    fsel<=(instruction[4:0] === 5'b0000) ? fsr[4:0]:instruction[4:0];//间接寻址
  
  end 
   
 endmodule
   
   
   
   
    
