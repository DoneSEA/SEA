
//从机代码（轮询方式）
#include <SPI.h>
char buf;
volatile byte pos;
void setup (void)
{
  Serial.begin (9600);
  //从机的MISO要配置为输出模式
  pinMode(MISO, OUTPUT);
  pinMode(MOSI, INPUT);
  //使能SPI，SPI可以正常工作了
  SPCR |= _BV(SPE);
  SPCR |=0x08;
  pos = 0;
}
char SPI_SlaveReceive(void){
      while(!(SPSR & (1<<SPIF)));
      return SPDR;
}
void loop(void){
      buf=SPI_SlaveReceive();
      Serial.write(buf);
}
