/*
 * File:   main.c
 * Author: SZY
 *
 * Created on 2020?3?3?, ??12:49
 */
#include<pic.h>
#define uint  unsigned int
void delay(void)
{
    uint a,b,c;
	for(a=200;a>0;a--)
		for(b=110;b>0;b--)
            for(c=100;c>0;c--);
}
void main()
{
OPTION=8;
TRISA=0;
    while(1)
   {
    PORTA = 1;
    delay();
    PORTA = 2;
    delay();
    PORTA = 4;
    delay();
    PORTA = 8;
    delay();
    PORTA = 0;
    delay();
   }
}
