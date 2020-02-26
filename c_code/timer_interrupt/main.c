#include <stdint.h>
#include "encoding.h"
#define _REG32(p, i) 		(*(volatile uint32_t *)((p) + (i)))
#define GPIO_REG_ADDR 		0x10012000UL
#define GPIO_REG(offset) 	_REG32(GPIO_REG_ADDR, offset)


int main() {
//	GPIO_REG(0) = 0x555;
//	uint32_t gpio = GPIO_REG(0);
	while (1) {
	};
}
