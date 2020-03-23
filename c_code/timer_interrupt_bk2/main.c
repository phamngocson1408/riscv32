#include <stdint.h>
#include <time.h>
#include "encoding.h"
#define _REG32(p, i) 		(*(volatile uint32_t *)((p) + (i)))
#define GPIO_REG_ADDR 		0x0200C000UL
#define GPIO_REG(offset) 	_REG32(GPIO_REG_ADDR, offset)
/*
int fact (int n){
    if (n < 1) return (1);
    else return (n + fact(n-1));
}

int fact2 (int n){
	return n;
}
*/
int main() {
//	GPIO_REG(0) = 0x555;
//	uint32_t gpio = GPIO_REG(0);
//	int pram = 50;
//	int a = fact(pram);	
//	int i;
//	int c = 1;
	int a = 0;
	int c = 0;
	int b;
	while (1) 
	{
//		int pram = 50;
//		int a = fact(pram);	
//		int i;
//		int c = 1;
//		for (i = pram; i > 0; i--)
//		{
//			c += i;
//		}
//		if ( a != c)
//			GPIO_REG(0) = 0x01;
//		else	GPIO_REG(0) = 0x00;
		a = a + 1;
		c = a*2;
		GPIO_REG(0) = c;
		GPIO_REG(4) = 0;
		for (b = 0; b < 2 ; b++) {}
	}
}

