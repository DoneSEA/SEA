/*
  ColorDetection

  This example show how to follow the trail of color object.

  The MIT License (MIT)
  Peter Yang <turmary@126.com>
  Copyright (C) 2019  Seeed Technology Co.,Ltd.
*/


// include the SPI library:
#include <SPI.h>

enum {
  #define SYS_ENABLE 0x01
  #define SYS_RESET  0x02
  SYS_CON     = 0x07,
  AREA_SIZE,
  X_DATA_LOW,
  X_DATA_HIGH,
  Y_DATA_LOW,
  Y_DATA_HIGH,
  APPROX_VAL,
};

const byte SPI_READ  = 0b00000000;   // color_detect.bit
const byte SPI_WRITE = 0b10000000;

// set pin 10 as the slave select for the digital pot:
const int slaveSelectPin = 10;
const int resetPin       =  9;

unsigned regRead(int address) {
  unsigned v;

  // take the SS pin low to select the chip:
  digitalWrite(slaveSelectPin, LOW);
  //  send in the address and value via SPI:
  SPI.transfer(address | SPI_READ);
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
  SPI.transfer(address | SPI_WRITE);
  v = SPI.transfer(value);
  // take the SS pin high to de-select the chip:
  digitalWrite(slaveSelectPin, HIGH);
  return v;
}

void setup() {
  int v;

  Serial.begin(115200);

  // set the slaveSelectPin as an output:
  pinMode(slaveSelectPin, OUTPUT);

  // initialize SPI:
  SPI.begin();
  SPI.beginTransaction(SPISettings(100000, MSBFIRST, SPI_MODE0));

  // set the reset Pin as an output
  pinMode(resetPin,       OUTPUT);

  // reset FPGA logic
  digitalWrite(resetPin, LOW);
  delay(1);
  digitalWrite(resetPin, HIGH);

  // color rectangle 20 x 20 pixels
  regWrite(AREA_SIZE, 20);

  // clear color for detection
  v  =  SYS_RESET;
  regWrite(SYS_CON, 0x80);

  // Normal state
  v &= ~SYS_RESET;
  // start to identify color object
  v &= ~SYS_ENABLE;
  regWrite(SYS_CON, 0x80);

  Serial.println(
    //"You have 5 seconds to identify color object"
  );
  delay(5000);

  v |= SYS_ENABLE;
  regWrite(SYS_CON, 0x80);
}


void spi_dump_regs(void) {
  unsigned v;

  Serial.println("\r\nREGS:");
  for (int address = 2; address < 0x7; address++) {
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


void loop() {
  //int r;
  regWrite(0x00,0x04);
  //Serial.println(regRead(0x00));
  spi_dump_regs();
  delay(5000);
}
