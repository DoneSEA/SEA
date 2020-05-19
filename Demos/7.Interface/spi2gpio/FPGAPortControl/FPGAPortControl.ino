/*
  FPGA Port Control

  This example controls an FPGA xc7s15ftgb196-1 logic port.

==============================================================================================
      FUNCTION  LOGIC            FPGA PIN          NET/ARDUINO                reserved
==============================================================================================
        SPI     gport_f[5]        H2                AR_D13   /SCK
                gport_f[4]        H1                AR_D12   /MISO
                gport_f[3]        B1                AR_D11   /MOSI
                spi_fss           B2                AR_D10   /SS             gport_f[2]
                rst_n             A2                AR_D9                    gport_f[1]

                gport_f[0]        B3                AR_D8
                gport_c[7]        A3                AR_D7
                gport_c[6]        A4                AR_D6
                gport_c[5]        B5                AR_D5
                gport_c[4]        A5                AR_D4
                gport_c[3]        B6                AR_D3
                gport_c[2]        A10               AR_D2
                                                    AR_D1    /TX
                                                    AR_D0    /RX

        IO      gport_a[0]        N14               FPGA_IO0
                gport_a[1]        M14               FPGA_IO1
                gport_a[2]        C4                FPGA_IO2
                gport_a[3]        B13               FPGA_IO3
                gport_a[4]        N10               FPGA_IO4
                gport_a[5]        M10               FPGA_IO5
                gport_a[6]        B14               FPGA_IO6
                gport_a[7]        D3                FPGA_IO7
                gport_b[0]        P5                FPGA_IO8
                gport_b[1]        E11               FPGA_IO9

        QSPI    gport_b[2]        L14               FPGA_QSPI_Q
                gport_b[3]        P2                FPGA_QSPI_D
                gport_b[4]        D13               FPGA_QSPI_HD
                gport_b[5]        J13               FPGA_QSPI_WP
                gport_d[4]        H14               FPGA_QSPI_CLK
                gport_d[5]        M13               FPGA_QSPI_CS

        LED     gport_b[6]        J1                FPGA_LED1
                gport_b[7]        A13               FPGA_LED2

        Button  gport_e[0]        M2                FPGA_K1
                gport_e[1]        L2                FPGA_K2
                gport_e[2]        L3                FPGA_K3
                gport_e[3]        K3                FPGA_K4
                gport_e[4]        C3                FPGA_USER1
                gport_e[5]        M4                FPGA_USER2
                gport_e[6]        D14               FPGA_RST

        ADC1173 gport_e[7]        J4                ADC1173./OE

        LSM6DS3TR
                gport_d[1]        J14               IMU_AD
                gport_d[2]        L12               IMU_INT2

        VERSION gport_z[0]        P4                VERSION_1
                gport_z[1]        P3                VERSION_2
                gport_z[2]        C14               VERSION_3

        AR_PWR  gport_z[3]        B11               AR_DET
                gport_d[3]        L13               AR_3V3_EN

        TXS0104E-0
                gport_z[6]        N4                FPGA_AR_OE1
        I2C __  gport_d[6]        P13               FPGA_ESP_SDA <- AR_SDA
            \_  gport_d[7]        P12               FPGA_ESP_SCL <- AR_SCL
        UART__  gport_c[0]        A12               FPGA_AR_D0   <- AR_D0
            \_  gport_c[1]        C12               FPGA_AR_D1   <- AR_D1

        TXS0104E-1
                gport_z[7]        M3                FPGA_AR_OE2
                gport_z[4]        K4                FPGA_AR_RESET<- AR_RESET
        SPI__   spi_clk           H13               FPGA_AR_SCK  <- AR_SCK
           |_   spi_in            M5                FPGA_AR_MOSI <- AR_MOSI
           \_   spi_out           L5                FPGA_AR_MISO <- AR_MISO

        DG2788A gport_z[5]        H3                FPGA_ESP_IN12

        SK6805  sk6805_do         N11               FPGA_RGB


 The registers:
  * 0x00  - GPA_OE    port A output enable, 1 for output, 0 for input
  * 0x01  - GPA_ODATA port A output data
  * 0x02  - GPA_IDATA port A input  data

  * 0x04  - GPB_OE    port B output enable, 1 for output, 0 for input
  * 0x05  - GPB_ODATA port B output data
  * 0x06  - GPB_IDATA port B input  data

  * 0x08  - GPC_OE    port C output enable, 1 for output, 0 for input
  * 0x09  - GPC_ODATA port C output data
  * 0x0A  - GPC_IDATA port C input  data
  * 0x0B  - GPC_ALT   port C alternate function control,
            bit 0x01  UART_TX alternate, 1 for UART_TX, 0 for GPORT_C[0]
            bit 0x02  UART_RX alternate, 1 for UART_RX, 0 for GPORT_C[1]
            bit 0xFC  reserved

  * 0x0C  - GPD_OE    port D output enable, 1 for output, 0 for input
  * 0x0D  - GPD_ODATA port D output data
  * 0x0E  - GPD_IDATA port D input  data

  * 0x10  - GPE_OE    port E output enable, 1 for output, 0 for input
  * 0x11  - GPE_ODATA port E output data
  * 0x12  - GPE_IDATA port E input  data

  * 0x14  - SK6805_CTRL sk6805 control
            bit 0x07  color address 0 - 5 (B0, R0, G0, B1, R1, G1)
            bit 0xF8  reserved
  * 0x15  - SK6805_DATA color data

  * 0x16  - DAC_DATA0 DACx311 low  8-bits(DB7  - DB0),
            written to initiate a conversion/transfer
  * 0x17  - DAC_DATA1 DACx311 high 8-bits(DB15 - DB8),
            prepare high 8-bits to transfer only.

  * 0x18  - UART_DATA, UART receiving & transmit
  * 0x19  - UART_STAT, UART state
            bit 0x10 transmit busy
            bit 0x01 data buffer with valid data

  * 0x1C  - GPZ_OE    port Z output enable, 1 for output, 0 for input
  * 0x1D  - GPZ_ODATA port Z output data
  * 0x1E  - GPZ_IDATA port Z input  data

  * 0x1F  - ADC_DATA  adc1173 reading value

  * 0x20  - GPF_OE    port F output enable, 1 for output, 0 for input
  * 0x21  - GPF_ODATA port F output data
  * 0x22  - GPF_IDATA port F input  data

 The circuit:
  * RST - to digital pin  9 (Logic reset)
  * CS  - to digital pin 10 (SS pin)
  * SDI - to digital pin 11 (MOSI pin)
  * SDO - to digital pin 12 (MISO pin)
  * CLK - to digital pin 13 (SCK pin)

 created 20 June 2019
 by Peter Yang

 Base on DigitalPotControl.ino by Tom Igoe
*/

// include the SPI library:
#include <SPI.h>
#include <Wire.h>

enum {
  GPA_OE = 0x00,
  GPA_ODATA,
  GPA_IDATA,

  GPB_OE = 0x04,
  GPB_ODATA,
  GPB_IDATA,

  GPC_OE = 0x08,
  GPC_ODATA,
  GPC_IDATA,
  #define GPC_ALT_UART_TX   0x01
  #define GPC_ALT_UART_RX   0x02
  #define GPC_ALT_UART_MASK (GPC_ALT_UART_TX | GPC_ALT_UART_RX)
  GPC_ALT,

  GPD_OE = 0x0C,
  GPD_ODATA,
  GPD_IDATA,

  GPE_OE = 0x10,
  GPE_ODATA,
  GPE_IDATA,

  SK6805_CTRL = 0x14,
  SK6805_DATA,

  DAC_DATA0 = 0x16,
  DAC_DATA1,

  UART_DATA = 0x18,
  #define UART_STAT_TX_BUSY  0x10
  #define UART_STAT_RX_DV    0x01
  UART_STAT,

  GPZ_OE = 0x1C,
  GPZ_ODATA,
  GPZ_IDATA,

  ADC_DATA = 0x1F,

  GPF_OE = 0x20,
  GPF_ODATA,
  GPF_IDATA,
};

const byte WRITE = 0b10000000;   // SPI2GPIO write

// set pin 10 as the slave select for the digital pot:
const int slaveSelectPin = 10;
const int resetPin       =  9;

unsigned regRead(int address) {
  unsigned v;

  // take the SS pin low to select the chip:
  digitalWrite(slaveSelectPin, LOW);
  //  send in the address and value via SPI:
  SPI.transfer(address | 0x0);
  v = SPI.transfer(0x0);
  // take the SS pin high to de-select the chip:
  digitalWrite(slaveSelectPin, HIGH);
  return v;
}

unsigned regWrite(int address, int value) {
  unsigned v;

  // take the SS pin low to select the chip:
  digitalWrite(slaveSelectPin, LOW);
  //  send in the address and value via SPI:
  SPI.transfer(address | WRITE);
  v = SPI.transfer(value);
  // take the SS pin high to de-select the chip:
  digitalWrite(slaveSelectPin, HIGH);
  return v;
}

void pr_hex0(unsigned v) {
  if (v < 4096)
    Serial.print("0");
  if (v < 256)
    Serial.print("0");
  if (v < 16)
    Serial.print("0");
  Serial.print(v, HEX);
}

void setup() {
  int v;

  #if 1
  Serial.begin(115200);
  #else
  pinMode(0, INPUT);
  pinMode(1, INPUT);
  #endif

  // set the slaveSelectPin as an output:
  pinMode(slaveSelectPin, OUTPUT);

  // initialize SPI:
  SPI.begin();
  SPI.beginTransaction(SPISettings(100000, MSBFIRST, SPI_MODE3));


  // set the reset Pin as an output
  pinMode(resetPin,       OUTPUT);

  // reset FPGA logic
  digitalWrite(resetPin, LOW);
  delay(1);
  digitalWrite(resetPin, HIGH);

  /* Prevent initial error, if reset pin not used */
  // regRead(0x0);

  /*
   * D0/D2/D4...D12 output
   * D1/D3/D5...D13 input
   */
  regWrite(GPA_OE, 0x55);
  regWrite(GPB_OE, 0x55);

  /* LED1/2 as output */
  v = regRead(GPB_OE);
  regWrite(GPB_OE, v | 0xC0);


  /*
   * SK6805 RGB1
   * B R G = 0x123456
   */
  regWrite(SK6805_CTRL, 0);
  regWrite(SK6805_DATA, 0x12);
  regWrite(SK6805_CTRL, 1);
  regWrite(SK6805_DATA, 0x34);
  regWrite(SK6805_CTRL, 2);
  regWrite(SK6805_DATA, 0x56);

  #if 1
  for (int i = 0; i < 3; i++) {
    regWrite(SK6805_CTRL, i);
    v = regRead(SK6805_DATA);
    Serial.print("COLOR[");
    Serial.print(i);
    Serial.print("] = 0x");
    pr_hex0(v);Serial.println();
  }
  #endif

  /*
   * Enable TXS0104E-1 for SPI
   * Enable TXS0104E-0 for UART & I2C
   */
  regWrite(GPZ_OE,    0xE0);
  /*
   * FPGA_AR_OE2    = High
   * FPGA_AR_OE1    = High
   * FPGA_ESP_IN12  = Low, Enable ESP32 I2C
   */
  regWrite(GPZ_ODATA, 0xC0);

  /* UART alternate pin */
  regWrite(GPC_ALT, GPC_ALT_UART_MASK);

  regWrite(GPC_OE, 0xFF);
  regWrite(GPD_OE, 0x01);

  /* Enable ADC1173, set /OE to LOW */
  regWrite(GPE_OE, 0x80);
  v = regRead(GPE_IDATA);
  v &= ~0x80;
  regWrite(GPE_ODATA, v);

  Wire.begin();
}

void fpga_scan_io(void) {
  unsigned v;

  for (int i = 0; i < 7; i++) {
    unsigned a, b;

    v = 0x1 << (i << 1);

    a = v >> 0;
    b = (v >> 8) & 0xFF;
    regWrite(GPA_ODATA, a);
    regWrite(GPB_ODATA, b);

    Serial.print("W 0x");
    pr_hex0(v);

    delay(500);

    a = regRead(GPA_IDATA);
    b = regRead(GPB_IDATA);
    v = a | (b << 8);
    Serial.print(" R 0x");
    pr_hex0(v);
    Serial.println("");
  }
}

void spi_dump_regs(void) {
  unsigned v;

  Serial.println("\r\nREGS:");
  for (int address = 0; address < 0x20; address++) {
    v = regRead(address);
    Serial.print("[0x");
    if (address < 16)
      Serial.print("0");
    Serial.print(address, HEX);
    Serial.print("] = 0x");
    if (v < 16)
      Serial.print("0");
    Serial.println(v, HEX);
  }
}

unsigned leds = 0x80;
void led_reverse(void) {
  unsigned v;

  /*
  if (digitalRead(0)) {
    leds |=  0xC0;
  } else {
    leds &= ~0xC0;
  }
  */
  v = regRead(GPB_ODATA);
  regWrite(GPB_ODATA, (v & 0x3F) | (leds & 0xC0));
  leds = ~leds;

  v = regRead(GPC_ODATA);
  regWrite(GPC_ODATA, ~v);

  v = regRead(GPD_ODATA);
  regWrite(GPD_ODATA, ~v);
}

int button_chk(void) {
  unsigned v;

  v = regRead(GPE_IDATA);
  if ((v & 0x7F) != 0x70)
    return -1;

  Serial.print("Press USER1 ");
  for (;;)  if (0 == (regRead(GPE_IDATA) & 0x10)) break;
  Serial.println("OK");

  Serial.print("Press USER2 ");
  for (;;)  if (0 == (regRead(GPE_IDATA) & 0x20)) break;
  Serial.println("OK");

  Serial.print("Press FPGA_RST ");
  for (;;)  if (0 == (regRead(GPE_IDATA) & 0x40)) break;
  Serial.println("OK");

  Serial.print("Switch on K1 ");
  for (;;)  if (0 != (regRead(GPE_IDATA) & 0x01)) break;
  Serial.println("OK");

  Serial.print("Switch on K2 ");
  for (;;)  if (0 != (regRead(GPE_IDATA) & 0x02)) break;
  Serial.println("OK");

  Serial.print("Switch on K3 ");
  for (;;)  if (0 != (regRead(GPE_IDATA) & 0x04)) break;
  Serial.println("OK");

  Serial.print("Switch on K4 ");
  for (;;)  if (0 != (regRead(GPE_IDATA) & 0x08)) break;
  Serial.println("OK");

  #if 0
  Serial.print("0x");
  pr_hex0(v);
  Serial.println();
  #endif
  return 0;
}

int uart_chk(void) {
  unsigned r, v, stat;
  int i;

  // eliminate the buffer effect.
  Serial.flush();

  // FPGA UART RX
  for (r = 0x30; r < 0x3A; r++) {
    v = regRead(UART_STAT);
    if (v & UART_STAT_RX_DV)
      v = regRead(UART_DATA);

    stat = regRead(UART_STAT);

    Serial.print((const char)r);
    delay(1);

    for (i = 10000; i >= 0; i--) {
      if (regRead(UART_STAT) & UART_STAT_RX_DV) {
        break;
      }
    }
    if (i < 0) {
      return -1;
    }

    v = regRead(UART_DATA);
    if (r != v) {
      Serial.print("UART RX=");
      Serial.print(v, HEX);
      Serial.print(" AR_TX=");
      Serial.println(r, HEX);
      return -2;
    }
  }

  #if 0
  Serial.print(" UART_STAT=0x");
  if (stat < 16)
    Serial.print("0");
  Serial.print(stat, HEX);

  Serial.println();
  #endif


  // FPGA UART TX
  for (r = 0x40; r < 0x4A; r++) {
    regWrite(UART_DATA, r);

    // wait tx free
    for (i = 10000; i >= 0; i--) {
      if ((regRead(UART_STAT) & UART_STAT_TX_BUSY) == 0) {
        break;
      }
    }
    if (i < 0) {
      return -3;
    }

    v = Serial.read();
    if (r != v) {
      Serial.print("UART TX=");
      Serial.print(r, HEX);
      Serial.print(" AR_RX=");
      Serial.println(v, HEX);
      return -4;
    }
  }

  return 0;
}

int i2c_scan(void) {
  byte error, address;
  int nDevices;
  byte dev_0x20 = 0;
  byte dev_0x6B = 0;

  nDevices = 0;
  for(address = 1; address < 127; address++ )
  {
    // The i2c_scanner uses the return value of
    // the Write.endTransmisstion to see if
    // a device did acknowledge to the address.
    Wire.beginTransmission(address);
    error = Wire.endTransmission();

    if (error == 0)
    {
      Serial.print("0x");
      if (address<16)
        Serial.print("0");
      Serial.print(address,HEX);
      Serial.print(" ");

      nDevices++;
      if (address == 0x20) {
        dev_0x20 = 1;
      }
      if (address == 0x6B) {
        dev_0x6B = 1;
      }
    }
    else if (error==4)
    {
      Serial.print("Unknow error at address 0x");
      if (address<16)
        Serial.print("0");
      Serial.println(address,HEX);
    }
  }
  if (nDevices == 0) {
    Serial.println("No I2C devices found\n");
    return -1;
  }
  if (dev_0x20 && dev_0x6B) {
    return 0;
  }
  return -1;
}

int sk6805_blink(void) {
  static unsigned long color = 0xFFUL;

  regWrite(SK6805_CTRL, 0x0);
  regWrite(SK6805_DATA, (color >>  3) & 0x1F);
  regWrite(SK6805_CTRL, 0x1);
  regWrite(SK6805_DATA, (color >> 11) & 0x1F);
  regWrite(SK6805_CTRL, 0x2);
  regWrite(SK6805_DATA, (color >> 19) & 0x1F);

  regWrite(SK6805_CTRL, 0x3);
  regWrite(SK6805_DATA, (color >> 19) & 0x1F);
  regWrite(SK6805_CTRL, 0x4);
  regWrite(SK6805_DATA, (color >>  3) & 0x1F);
  regWrite(SK6805_CTRL, 0x5);
  regWrite(SK6805_DATA, (color >> 11) & 0x1F);

  switch (color) {
  case 0x0000FFUL: color = 0x00FF00UL; break;
  case 0x00FF00UL: color = 0xFF0000UL; break;
  case 0xFF0000UL: color = 0x0000FFUL; break;
  default:
    color = 0xFFUL; break;
  }
  return 0;
}

static int button_checked = 0;
void loop() {
  int r;

  // spi_dump_regs();

  Serial.print("UART: ");
  r = uart_chk();
  if (r < 0) {
    Serial.print(" FAIL ");
    Serial.println(r);
  } else {
    Serial.println(" OK");
  }

  led_reverse();

  if (button_checked == 0) {
    Serial.print("BTN : ");
    r = button_chk();
    if (r < 0) {
      Serial.print("FAIL ");
      Serial.println(r);
    } else {
      Serial.println("OK");
    }

    button_checked = 1;
  }

  Serial.print("I2C : ");
  r = i2c_scan();
  if (r < 0) {
    Serial.print("FAIL ");
    Serial.println(r);
  } else {
    Serial.println("OK");
  }

  sk6805_blink();

  r = regRead(ADC_DATA);
  Serial.print("ADC : ");
  Serial.print((unsigned long)r * 3300 / 256);
  Serial.print(" mV (");
  Serial.print(r);
  Serial.print(", 0x");
  Serial.print(r, HEX);
  Serial.println(")");

  // DAC-OUT = ADC-IN
  // DATA1 first
  regWrite(DAC_DATA1, (r >> 2) & 0x3F);
  // DATA0 last
  regWrite(DAC_DATA0, (r << 6) & 0xC0);

  Serial.println();
  delay(1500);
}
