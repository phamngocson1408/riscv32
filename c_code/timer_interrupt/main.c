#include <stdint.h>
#include <time.h>
#include "encoding.h"
#define _REG32(p, i) 		(*(volatile uint32_t *)((p) + (i)))
#define GPIO_REG_ADDR 		0x0200C000UL
#define GPIO_REG(offset) 	_REG32(GPIO_REG_ADDR, offset)

int x = 0xff00ff;

int main() {
	int i = 0;
	asm (	// add
		"test_add:\n\t"
		"li	ra,0\n\t"
		"mv	t5,ra\n\t"
		"li	t4,0\n\t"
		"li	gp,2\n\t"
		"bne	ra,t4,fail\n\t"
	);
	asm (	// and
		"test_and:\n\t"
		"lui	ra,0xf00ff\n\t"
		"addi	ra,ra,15 # f00ff00f <_end+0xf00fd00f>\n\t"
		"lui	t0,0xf0f0f\n\t"
		"addi	t0,t0,240 # f0f0f0f0 <_end+0xf0f0d0f0>\n\t"
		"and	t5,ra,t0\n\t"
		"lui	t4,0xf000f\n\t"
		"li	gp,5\n\t"
		"bne	t5,t4,fail\n\t"
	);
	asm (	// auipc
		"test_auipc:\n\t"
		"auipc	a0,0\n\t"
		"addi	a0,a0,12\n\t"
		"jal	a1,1f\n\t"
		"1: sub	a0,a0,a1\n\t"
		"lui	t4,0\n\t"
		"li	gp,3\n\t"
		"bne	a0,t4,fail\n\t"
	);
	asm (	// beq
		"test_beq:\n\t"
		"li	gp,3\n\t"
		"li	ra,1\n\t"
		"li	t0,1\n\t"
		"beq	ra,t0,1f\n\t"
		"bne	zero,gp,fail\n\t"
		"1:bne	zero,gp,test_blt\n\t"
		"bne	zero,gp,fail\n\t"
	);
	asm (	// blt
		"test_blt:\n\t"
		"li	gp,3\n\t"
		"li	ra,-1\n\t"
		"li	t0,1\n\t"
		"blt	ra,t0, 1f\n\t"
		"bne	zero,gp,fail\n\t"
		"1: bne	zero,gp,test_jalr\n\t"
		"bne	zero,gp,fail\n\t"
	);
	asm (	// jalr
		"test_jalr:\n\t"
		"li	gp,4\n\t"
		"li	tp,0\n\t"
		"2:auipc	t1,0x0\n\t"
		"addi	t1,t1,16 # 1f\n\t"
		"jalr	s3,t1\n\t"
		"bne	zero,gp,fail\n\t"
		"1:addi	tp,tp,1\n\t"
		"li	t0,2\n\t"
		"bne	tp,t0,2b\n\t"
	);
	asm (	// lw
		"test_lw:\n\t"
		"li	ra,0x80002000\n\t"
		"lw	t5,0(ra)\n\t"
		"lui	t4,0xff0\n\t"
		"addi	t4,t4,255\n\t"
		"li	gp,2\n\t"
		"bne	t5,t4,fail\n\t"
	);
	asm (	// sb
		"test_sb:\n\t"
		"li	ra,0x80002004\n\t"
		"li	t1,-86\n\t"
		"sb	t1,0(ra)\n\t"
		"lb	t5,0(ra)\n\t"
		"li	t4,-86\n\t"
		"li	gp,2\n\t"
		"bne	t5,t4,fail\n\t"
	);
	asm (	// sll
		"test_sll:\n\t"
		"li	ra,1\n\t"
		"li	t1,7\n\t"
		"sll	t5,ra,t1\n\t"
		"fence	\n\t"
		"li	t4,128\n\t"
		"li	gp,4\n\t"
		"bne	t5,t4,fail\n\t"
	);
	asm (	// amoadd
		"test_amoadd:\n\t"
		"lui	a0,0x80000\n\t"
		"li	a1,-2048\n\t"
		"li	a3,0x80002004\n\t"
		"sw	a0,0(a3)\n\t"
		"amoadd.w	a4,a1,(a3)\n\t"
		"lui	t4,0x80000\n\t"
		"li	gp,2\n\t"
		"bne	a4,t4,fail\n\t"
		"lw	a5,0(a3)\n\t"
		"lui	t4,0x80000\n\t"
		"addi	t4,t4,-2048\n\t"
		"li	gp,3\n\t"
		"bne	a5,t4,fail\n\t"
	);
	asm (	// amoswap
		"test_amoswap:\n\t"
		"lui	a0,0x80000\n\t"
		"li	a1,-2048\n\t"
		"li	a3,0x80002004\n\t"
		"sw	a0,0(a3)\n\t"
		"amoswap.w	a4,a1,(a3)\n\t"
		"lui	t4,0x80000\n\t"
		"li	gp,2\n\t"
		"bne	a4,t4,fail\n\t"
		"lw	a5,0(a3)\n\t"
		"li	t4,-2048\n\t"
		"li	gp,3\n\t"
		"bne	a5,t4,fail\n\t"
	);

/*
	asm (	// fence_i
		"test_fence_i:\n\t"
		"li	a3,111\n\t"
		"auipc	a0,0x2\n\t"
		"lh	a0,-256(a0)\n\t"
		"auipc	a1,0x2\n\t"
		"lh	a1,-262(a1)\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"auipc	t0,0x0\n\t"
		"sh	a0,20(t0)\n\t"
		"auipc	t0,0x0\n\t"
		"sh	a1,14(t0)\n\t"
		"fence.i\n\t"
		"addi	a3,a3,222\n\t"
		"nop\n\t"
		"li	t4,444\n\t"
		"li	gp,2\n\t"
		"bne	a3,t4,fail\n\t"
		"li	a4,100\n\t"
		"1:addi	a4,a4,-1\n\t"
		"bnez	a4,1b\n\t"
		"auipc	t0,0x0\n\t"
		"sh	a0,76(t0)\n\t"
		"auipc	t0,0x0\n\t"
		"sh	a1,70(t0)\n\t"
		"fence.i\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"nop\n\t"
		"addi	a3,a3,555\n\t"
		"nop\n\t"
		"li	t4,777\n\t"
		"li	gp,3\n\t"
		"bne	a3,t4,fail\n\t"
	);
*/
	asm ("check_i:\n\t");
	i = i + 1;
	if (i <= 10000) {asm (   "j	test_add\n\t");}

	asm (
		"test_25:\n\t"
		"li	ra,33\n\t"
		"addi	zero,ra,50\n\t"
		"li	t4,0\n\t"
		"li	gp,25\n\t"
		"bne	zero,t4,fail\n\t"
		"bne	zero,gp,pass\n\t"
	);
	asm (
		"fail:\n\t"
		"fence\n\t"
		"beqz	gp,fail+0x4\n\t"
		"slli	gp,gp,0x1\n\t"
		"ori	gp,gp,1\n\t"
		"ecall\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
	);
	asm (
		"pass:\n\t"
		"fence\n\t"
		"li	gp,1\n\t"
		"ecall\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
		"unimp\n\t"
	);
	asm ("end_main:\n\t");
}

