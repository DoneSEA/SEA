// spi2gpio.v
// tary, 18:20 2011-10-8

// `define OLD_SPI_OUT_R
`define REG_ADDR_SZ		6
//`define __LED_SEG		1

module spi2gpio (
	// common
	input osc_clk,
	input rst_n,

	// spi
	input spi_clk,
	input spi_fss,
	input spi_in,
	output spi_out,

	// gpio group A
	inout [7:0] gport_a,

	// gpio group B
	inout [7:0] gport_b,

	// gpio group C
	inout [7:0] gport_c,

	// gpio group D
	inout [6:0] gport_dx,

	// gpio group E
	inout [7:0] gport_e,

	// gpio group F
	inout [3:0] gport_fx,

	// gpio group Z
	inout [7:0] gport_z,

	`ifdef __LED_SEG
	// led segments
	output [7:0] led,
	output [1:0] led_sel_n,
	`endif

	// sk6805
	output sk6805_do,

	// adc1173
	output o_adc_clk,
	input [7:0] i_adc_data,

	// dac7311
	output o_dac_clk,
	output o_dac_sync_n,
	output o_dac_data
);
	/* global clock */
	reg clk;

	/* a half frequency as global clock */
	always @(posedge osc_clk) begin
		clk = ~clk;
	end

`ifdef OLD_SPI_OUT_R
	reg spi_out_r;
`else
	wire spi_out_r;
`endif
	reg spi_in_r;
	reg spi_clk_r;
	reg spi_fss_r;

	reg  [7:0] spi_snd;
	wire [7:0] spi_rcv;

	wire [7:0] gport_d;
	assign gport_d = {gport_dx[6:0], 1'bz};

	wire [7:0] gport_f;
	assign gport_f = {2'bz, gport_fx[3:1], 2'bz, gport_fx[0]};

/* ===========================================================================*/
/* SPI clock sync to high frequency clock */
/* ===========================================================================*/
	wire sclk;
	wire sfss;
	wire sin;

	assign sclk = spi_clk_r;
	assign sfss = spi_fss_r;
	assign sin = spi_in_r;
	assign spi_out = (!spi_fss)? spi_out_r: 1'bz;

	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			spi_clk_r = 0;
		else
			spi_clk_r = spi_clk;
	end

	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			spi_in_r = 0;
		else
			spi_in_r = spi_in;
	end

	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			spi_fss_r = 1;
		else
			spi_fss_r = spi_fss;
	end

/* ===========================================================================*/
/* SPI logic shifting in/out */
/* ===========================================================================*/
	reg [1:0] sync_r;
	wire cycle_sample;
	wire cycle_wr;
	wire cycle_rd;
	wire cycle_state;
	wire cycle_load;
	wire cycle_clear;

	assign cycle_wr    = cycle_sample;
	assign cycle_rd    = cycle_sample;
	assign cycle_state = sync_r[0];
	assign cycle_load  = sync_r[0];
	assign cycle_clear = sync_r[0];

	reg sfss_l;
	reg sclk_l;
	always @(negedge rst_n or posedge clk) begin
		if (!rst_n) begin
			sfss_l = 1'b1;
			sclk_l = 1'b0;
		end else begin
			sfss_l = sfss;
			sclk_l = sclk;
		end
	end
	/*
	wire sfss_l = spi_fss_r;
	wire sclk_l = spi_clk_r;
	*/

	reg [8:0] shift_cntr;
	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			shift_cntr = 9'd1;
		else if (cycle_clear)
			shift_cntr = 9'd1;
		else if (sfss == 0) begin
			if (sfss_l != sfss)
				shift_cntr = 9'd1;
			else if (sclk != 0 && sclk_l != sclk)
				shift_cntr = {shift_cntr[7:0], 1'b0};
		end
	end

	reg [7:0] shift_r;
	assign spi_rcv = shift_r;

	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			shift_r = 8'd0;
		else if (cycle_load) begin
			shift_r = spi_snd;
		end else if (!sfss && sclk != 0 && sclk != sclk_l) begin
			// shift in the received bit from LSB.
			shift_r = {shift_r[6:0], sin};
		end
	end

`ifdef OLD_SPI_OUT_R
	wire w;
	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			spi_out_r = 0;
		else if (sclk == 0) begin
			spi_out_r = shift_r[7];
		end
	end
`else
	assign spi_out_r = shift_r[7];
`endif

	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			sync_r[1] = 0;
		else
			sync_r[1] = sync_r[0];
	end

	wire byte_rcv;
	assign byte_rcv = shift_cntr[8];

	reg byte_rcv_l;
	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			byte_rcv_l = 1;
		else
			byte_rcv_l = byte_rcv;
	end

	assign cycle_sample = byte_rcv_l == 0 && byte_rcv != 0 && sync_r == 2'b0;
	always @(negedge rst_n or posedge clk) begin
		if (!rst_n)
			sync_r[0] = 0;
		else begin
			sync_r[0] = 0;
			if (cycle_sample)
				sync_r[0] = 1;
		end
	end

/* ===========================================================================*/
/* SPI ADDRESS/DATA BYTE switch */
/* ===========================================================================*/
	parameter spi_st_addr = 1'b0,
		spi_st_data = 1'b1;

	reg spi_st;

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n)
			spi_st = spi_st_addr;
		else if (cycle_state) begin
			case (spi_st)
			spi_st_addr: spi_st = spi_st_data;
			spi_st_data: spi_st = spi_st_addr;
			default: spi_st = spi_st_addr;
			endcase;
		end else if (sfss_l != sfss && sfss != 0) begin
			/*
			 * return to register addressing state
			 * if this device unselected.
			 */
			spi_st = spi_st_addr;
		end
	end

	/* spi_wr/wr_addr use spi_st_addr's data */
	reg  [`REG_ADDR_SZ - 1:0] wr_addr;
	wire spi_wr = cycle_wr && spi_st == spi_st_data && spi_wr_r;
	reg spi_wr_r;
	/* spi_wdata      use spi_st_data's data */
	wire [7:0] spi_wdata;

	/* spi_rd/rd_addr use spi_st_addr's data */
	wire [`REG_ADDR_SZ - 1:0] rd_addr;
	wire spi_rd = cycle_rd && spi_st == spi_st_addr && ~spi_rcv[7];
/*
	always @(posedge clk) begin
		gpa_oe = 8'hff;
		gpa_odata = {wr_addr, spi_wr_r};
	end
*/

/* ===========================================================================*/
/* GPIO A */
/* ===========================================================================*/
	reg  [7:0] gpa_oe;
	reg  [7:0] gpa_odata;
	wire [7:0] gpa_idata;

	assign gpa_idata = gport_a;

	assign gport_a[0] = gpa_oe[0]? gpa_odata[0]: 1'bz;
	assign gport_a[1] = gpa_oe[1]? gpa_odata[1]: 1'bz;
	assign gport_a[2] = gpa_oe[2]? gpa_odata[2]: 1'bz;
	assign gport_a[3] = gpa_oe[3]? gpa_odata[3]: 1'bz;
	assign gport_a[4] = gpa_oe[4]? gpa_odata[4]: 1'bz;
	assign gport_a[5] = gpa_oe[5]? gpa_odata[5]: 1'bz;
	assign gport_a[6] = gpa_oe[6]? gpa_odata[6]: 1'bz;
	assign gport_a[7] = gpa_oe[7]? gpa_odata[7]: 1'bz;

/* ===========================================================================*/
/* GPIO B */
/* ===========================================================================*/
	reg  [7:0] gpb_oe;
	reg  [7:0] gpb_odata;
	wire [7:0] gpb_idata;

	assign gpb_idata = gport_b;

	assign gport_b[0] = gpb_oe[0]? gpb_odata[0]: 1'bz;
	assign gport_b[1] = gpb_oe[1]? gpb_odata[1]: 1'bz;
	assign gport_b[2] = gpb_oe[2]? gpb_odata[2]: 1'bz;
	assign gport_b[3] = gpb_oe[3]? gpb_odata[3]: 1'bz;
	assign gport_b[4] = gpb_oe[4]? gpb_odata[4]: 1'bz;
	assign gport_b[5] = gpb_oe[5]? gpb_odata[5]: 1'bz;
	assign gport_b[6] = gpb_oe[6]? gpb_odata[6]: 1'bz;
	assign gport_b[7] = gpb_oe[7]? gpb_odata[7]: 1'bz;

/* ===========================================================================*/
/* GPIO C */
/* ===========================================================================*/
	reg  [7:0] gpc_alt;
	reg  [7:0] gpc_oe;
	reg  [7:0] gpc_odata;
	wire [7:0] gpc_idata;

	// uart
	wire o_uart_tx;
	wire i_uart_rx = gport_c[1];

	assign gpc_idata = gport_c;

	assign gport_c[0] = gpc_alt[0]? o_uart_tx:
	                                   (gpc_oe[0]? gpc_odata[0]: 1'bz);
	assign gport_c[1] = (~gpc_alt[1] & gpc_oe[1])? gpc_odata[1]: 1'bz;
	assign gport_c[2] = gpc_oe[2]? gpc_odata[2]: 1'bz;
	assign gport_c[3] = gpc_oe[3]? gpc_odata[3]: 1'bz;
	assign gport_c[4] = gpc_oe[4]? gpc_odata[4]: 1'bz;
	assign gport_c[5] = gpc_oe[5]? gpc_odata[5]: 1'bz;
	assign gport_c[6] = gpc_oe[6]? gpc_odata[6]: 1'bz;
	assign gport_c[7] = gpc_oe[7]? gpc_odata[7]: 1'bz;

/* ===========================================================================*/
/* GPIO D */
/* ===========================================================================*/
	reg  [7:0] gpd_oe;
	reg  [7:0] gpd_odata;
	wire [7:0] gpd_idata;

	assign gpd_idata = gport_d;

	assign gport_d[0] = gpd_oe[0]? gpd_odata[0]: 1'bz;
	assign gport_d[1] = gpd_oe[1]? gpd_odata[1]: 1'bz;
	assign gport_d[2] = gpd_oe[2]? gpd_odata[2]: 1'bz;
	assign gport_d[3] = gpd_oe[3]? gpd_odata[3]: 1'bz;
	assign gport_d[4] = gpd_oe[4]? gpd_odata[4]: 1'bz;
	assign gport_d[5] = gpd_oe[5]? gpd_odata[5]: 1'bz;
	assign gport_d[6] = gpd_oe[6]? gpd_odata[6]: 1'bz;
	assign gport_d[7] = gpd_oe[7]? gpd_odata[7]: 1'bz;

/* ===========================================================================*/
/* GPIO E */
/* ===========================================================================*/
	reg  [7:0] gpe_oe;
	reg  [7:0] gpe_odata;
	wire [7:0] gpe_idata;

	assign gpe_idata = gport_e;

	assign gport_e[0] = gpe_oe[0]? gpe_odata[0]: 1'bz;
	assign gport_e[1] = gpe_oe[1]? gpe_odata[1]: 1'bz;
	assign gport_e[2] = gpe_oe[2]? gpe_odata[2]: 1'bz;
	assign gport_e[3] = gpe_oe[3]? gpe_odata[3]: 1'bz;
	assign gport_e[4] = gpe_oe[4]? gpe_odata[4]: 1'bz;
	assign gport_e[5] = gpe_oe[5]? gpe_odata[5]: 1'bz;
	assign gport_e[6] = gpe_oe[6]? gpe_odata[6]: 1'bz;
	assign gport_e[7] = gpe_oe[7]? gpe_odata[7]: 1'bz;

/* ===========================================================================*/
/* GPIO F */
/* ===========================================================================*/
	reg  [7:0] gpf_oe;
	reg  [7:0] gpf_odata;
	wire [7:0] gpf_idata;

	assign gpf_idata = gport_f;

	assign gport_f[0] = gpf_oe[0]? gpf_odata[0]: 1'bz;
	assign gport_f[1] = gpf_oe[1]? gpf_odata[1]: 1'bz;
	assign gport_f[2] = gpf_oe[2]? gpf_odata[2]: 1'bz;
	assign gport_f[3] = gpf_oe[3]? gpf_odata[3]: 1'bz;
	assign gport_f[4] = gpf_oe[4]? gpf_odata[4]: 1'bz;
	assign gport_f[5] = gpf_oe[5]? gpf_odata[5]: 1'bz;
	assign gport_f[6] = gpf_oe[6]? gpf_odata[6]: 1'bz;
	assign gport_f[7] = gpf_oe[7]? gpf_odata[7]: 1'bz;

/* ===========================================================================*/
/* GPIO Z */
/* ===========================================================================*/
	reg  [7:0] gpz_oe;
	reg  [7:0] gpz_odata;
	wire [7:0] gpz_idata;

	assign gpz_idata = gport_z;

	assign gport_z[0] = gpz_oe[0]? gpz_odata[0]: 1'bz;
	assign gport_z[1] = gpz_oe[1]? gpz_odata[1]: 1'bz;
	assign gport_z[2] = gpz_oe[2]? gpz_odata[2]: 1'bz;
	assign gport_z[3] = gpz_oe[3]? gpz_odata[3]: 1'bz;
	assign gport_z[4] = gpz_oe[4]? gpz_odata[4]: 1'bz;
	assign gport_z[5] = gpz_oe[5]? gpz_odata[5]: 1'bz;
	assign gport_z[6] = gpz_oe[6]? gpz_odata[6]: 1'bz;
	assign gport_z[7] = gpz_oe[7]? gpz_odata[7]: 1'bz;

/* ===========================================================================*/
/* 2 Digit Seven-segment Display */
/* ===========================================================================*/
`ifdef __LED_SEG
	reg [7:0] led_nr_0;
	reg [7:0] led_nr_1;

	// assign led = 8'b01111001;

	led_segment led_seg_unit(
		.clk(clk),
		.rst_n(rst_n),
		.led_pins(led),
		.nr_0(led_nr_0),
		.nr_1(led_nr_1),
		.led_sel_n(led_sel_n)
	);
`endif

/* ===========================================================================*/
/* Fixed Baudrate UART */
/* ===========================================================================*/
	`define UART_DATA_ADDR		'h18
	wire uart_ri;
	wire [7:0] uart_rcv;
	wire uart_tfr_busy;
	wire uart_rd_n = !(spi_rd && rd_addr == `UART_DATA_ADDR);
	wire uart_wr_n = !(spi_wr && wr_addr == `UART_DATA_ADDR);

	uart_cell uart_cell_0(
		.i_clk(clk),
		.i_rst_n(rst_n),
		.i_rd_n(uart_rd_n),
		.i_wr_n(uart_wr_n),
		.i_rx(i_uart_rx),
		.i_tx_data(spi_wdata),
		.o_tx(o_uart_tx),
		.o_ri(uart_ri),
		.o_tfr_busy(uart_tfr_busy),
		.o_rx_data(uart_rcv)
	);

/* ===========================================================================*/
/* SK6805 Color LEDS */
/* ===========================================================================*/
	`define SK6805_CTRL_ADDR	'h14
	`define SK6805_DATA_ADDR	'h15
	wire [7:0] sk6805_data;
	reg  [7:0] sk6805_ctrl;
	wire sk6805_wr_n = !(spi_wr && wr_addr == `SK6805_DATA_ADDR);

	sk6805 sk_leds(
		.i_clk(clk),
		.i_rst_n(rst_n),
		.i_wr_n(sk6805_wr_n),
		.i_addr(sk6805_ctrl[2:0]),
		.i_data(spi_wdata),
		.o_data(sk6805_data),
		.o_sk(sk6805_do)
	);

/* ===========================================================================*/
/* ADC1173 */
/* ===========================================================================*/
	`define ADC1173_DATA_ADDR	'h1F
	wire [7:0] adc1173_data;

	adc1173 adc_unit(
		.i_clk(clk),
		.i_rst_n(rst_n),
		.o_data(adc1173_data),
		.i_adc_data(i_adc_data),
		.o_adc_clk(o_adc_clk)
	);

/* ===========================================================================*/
/* DAC7311 */
/* ===========================================================================*/
	`define DAC_DATA0_ADDR		'h16
	`define DAC_DATA1_ADDR		'h17
	wire [7:0] dac_bus_data;
	wire dac7311_wr_n = !(spi_wr && ((wr_addr == `DAC_DATA0_ADDR)
	                                 ||(wr_addr == `DAC_DATA1_ADDR)));

	dac7311 dac_unit(
		.i_clk        (clk),
		.i_rst_n      (rst_n),
		.i_wr_n       (dac7311_wr_n),
		/* wr_addr too slow, use rd_addr instead */
		.i_addr       ((spi_st == spi_st_addr)? rd_addr[0]: wr_addr[0]),
		.i_data       (spi_wdata),
		.o_data       (dac_bus_data),
		.o_dac_sync_n (o_dac_sync_n),
		.o_dac_clk    (o_dac_clk),
		.o_dac_data   (o_dac_data)
	);

/* ===========================================================================*/
/* SPI REGISTER WRITE */
/* ===========================================================================*/
	/*
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			spi_wdata = 0;
		end else if (cycle_sample && spi_st == spi_st_data) begin
			spi_wdata = spi_rcv;
		end
	end
	*/
	assign spi_wdata = spi_rcv;

	/* SAVING WRITING ADDRESS */
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			spi_wr_r = 0;
			wr_addr = 0;
		end else if (cycle_sample && spi_st == spi_st_addr) begin
			spi_wr_r  = spi_rcv[7];
			wr_addr = spi_rcv[`REG_ADDR_SZ - 1:0];
		end
	end

	/* register writing */
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) begin
			gpa_oe = 8'h00;
			gpa_odata = 0;

			gpb_oe = 8'h00;
			gpb_odata = 0;

			gpc_oe = 8'h00;
			gpc_odata = 0;
			gpc_alt = 8'h00;

			gpd_oe = 8'h00;
			gpd_odata = 0;

			gpe_oe = 8'h00;
			gpe_odata = 0;

			gpf_oe = 8'h00;
			gpf_odata = 0;

			gpz_oe    = 8'h80;
			gpz_odata = 8'h80;

			`ifdef __LED_SEG
			led_nr_0 = 0;
			led_nr_1 = 0;
			`endif

			sk6805_ctrl = 8'h00;

		end else if (spi_wr) begin
			case (wr_addr)
			'h00: gpa_oe    = spi_wdata;
			'h01: gpa_odata = spi_wdata;

			'h04: gpb_oe    = spi_wdata;
			'h05: gpb_odata = spi_wdata;

			'h08: gpc_oe    = spi_wdata;
			'h09: gpc_odata = spi_wdata;
			'h0B: gpc_alt   = spi_wdata;

			'h0C: gpd_oe    = spi_wdata;
			'h0D: gpd_odata = spi_wdata;

			'h10: gpe_oe    = spi_wdata;
			'h11: gpe_odata = spi_wdata;

			`ifdef __LED_SEG
			'h1C: led_nr_0  = spi_wdata;
			'h1D: led_nr_1  = spi_wdata;
			`endif

			'h1C: gpz_oe    = spi_wdata;
			'h1D: gpz_odata = spi_wdata;

			`SK6805_CTRL_ADDR: sk6805_ctrl = spi_wdata;

			'h20: gpf_oe    = spi_wdata;
			'h21: gpf_odata = spi_wdata;
			default: ;
			endcase
		end
	end

/* ===========================================================================*/
/* SPI REGISTER READ */
/* ===========================================================================*/
	assign rd_addr = spi_rcv[`REG_ADDR_SZ - 1:0];
	`define SPI_DUMMY	8'h5A

	/* register reading */
	always @(posedge clk or negedge rst_n) begin
		if (!rst_n)
			spi_snd = `SPI_DUMMY;
		else if (cycle_rd && spi_st == spi_st_data)
			// when command phase, spi output with SPI_DUMMY
			spi_snd = `SPI_DUMMY;
		else if (spi_rd) begin
			case (rd_addr)
			'h00: spi_snd = gpa_oe;
			'h01: spi_snd = gpa_odata;
			'h02: spi_snd = gpa_idata;

			'h04: spi_snd = gpb_oe;
			'h05: spi_snd = gpb_odata;
			'h06: spi_snd = gpb_idata;

			'h08: spi_snd = gpc_oe;
			'h09: spi_snd = gpc_odata;
			'h0A: spi_snd = gpc_idata;
			'h0B: spi_snd = gpc_alt;

			'h0C: spi_snd = gpd_oe;
			'h0D: spi_snd = gpd_odata;
			'h0E: spi_snd = gpd_idata;

			'h10: spi_snd = gpe_oe;
			'h11: spi_snd = gpe_odata;
			'h12: spi_snd = gpe_idata;

			`SK6805_CTRL_ADDR: spi_snd = sk6805_ctrl;
			`SK6805_DATA_ADDR: spi_snd = sk6805_data;

			`DAC_DATA0_ADDR: spi_snd = dac_bus_data;
			`DAC_DATA1_ADDR: spi_snd = dac_bus_data;

			`ifdef __LED_SEG
			'h1C: spi_snd = led_nr_0;
			'h1D: spi_snd = led_nr_1;
			`endif

			`UART_DATA_ADDR: spi_snd = uart_rcv;
			'h19: spi_snd = {3'h0, uart_tfr_busy, 3'h0, uart_ri};

			'h1C: spi_snd = gpz_oe;
			'h1D: spi_snd = gpz_odata;
			'h1E: spi_snd = gpz_idata;

			`ADC1173_DATA_ADDR: spi_snd = adc1173_data;

			'h20: spi_snd = gpf_oe;
			'h21: spi_snd = gpf_odata;
			'h22: spi_snd = gpf_idata;

			default: spi_snd = 8'h0;
				/*
				 * debuging only
				 * {spi_rd, 4'h0, rd_addr};
				 * {spi_wr, 4'h0, wr_addr};
				 */
			endcase
		end
	end

endmodule
