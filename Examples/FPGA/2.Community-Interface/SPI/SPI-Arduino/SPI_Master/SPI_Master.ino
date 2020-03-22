#include <SPI.h>
void setup (void)
{
  // 开始串口通讯
  //注意：此串口与SPI通信没有任何关系，只是为了程序演示输出SPI接收到的字节。
  Serial.begin(115200);       
  digitalWrite(SS, HIGH);    //SPI内部逻辑复位
  SPI.begin ();              // SPI通讯初始化配置
}
void loop (void)
{
  char c;
  // 使能从机
  digitalWrite(SS, LOW);    // SS - pin 10
  // 循环发送字节，实现字符串的发送
  for (const char * p = "Hello,world!\n" ; c = *p; p++) {
    SPI.transfer (c);//主机SPI发送
    Serial.print(c);//串口显示发送的字节
  }
  // 复位从机
  digitalWrite(SS, HIGH);
  //delay (1);
}
