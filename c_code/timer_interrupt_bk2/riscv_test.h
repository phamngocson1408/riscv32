// See LICENSE for license details.

#ifndef _ENV_PHYSICAL_SINGLE_CORE_H
#define _ENV_PHYSICAL_SINGLE_CORE_H

#include "encoding.h"

//-----------------------------------------------------------------------
// Begin Macro
//-----------------------------------------------------------------------

#define RVTEST_RV64U                                                    \
  .macro init;                                                          \
  .endm

#define RVTEST_RV64UF                                                   \
  .macro init;                                                          \
  RVTEST_FP_ENABLE;                                                     \
  .endm

#define RVTEST_RV32U                                                    \
  .macro init;                                                          \
  .endm

#define RVTEST_RV32UF                                                   \
  .macro init;                                                          \
  RVTEST_FP_ENABLE;                                                     \
  .endm

#define RVTEST_RV64M                                                    \
  .macro init;                                                          \
  RVTEST_ENABLE_MACHINE;                                                \
  .endm

#define RVTEST_RV64S                                                    \
  .macro init;                                                          \
  RVTEST_ENABLE_SUPERVISOR;                                             \
  .endm

#define RVTEST_RV32M                                                    \
  .macro init;                                                          \
  RVTEST_ENABLE_MACHINE;                                                \
  .endm

#define RVTEST_RV32S                                                    \
  .macro init;                                                          \
  RVTEST_ENABLE_SUPERVISOR;                                             \
  .endm

#if __riscv_xlen == 64
# define CHECK_XLEN li a0, 1; slli a0, a0, 31; bgez a0, 1f; RVTEST_PASS; 1:
#else
# define CHECK_XLEN li a0, 1; slli a0, a0, 31; bltz a0, 1f; RVTEST_PASS; 1:
#endif

#define INIT_PMP                                                        \
  la t0, 1f;                                                            \
  csrw mtvec, t0;                                                       \
  li t0, -1;        /* Set up a PMP to permit all accesses */           \
  csrw pmpaddr0, t0;                                                    \
  li t0, PMP_NAPOT | PMP_R | PMP_W | PMP_X;                             \
  csrw pmpcfg0, t0;                                                     \
  .align 2;                                                             \
1:

#define INIT_SATP                                                      \
  la t0, 1f;                                                            \
  csrw mtvec, t0;                                                       \
  csrwi sptbr, 0;                                                       \
  .align 2;                                                             \
1:

#define DELEGATE_NO_TRAPS                                               \
  la t0, 1f;                                                            \
  csrw mtvec, t0;                                                       \
  csrwi medeleg, 0;                                                     \
  csrwi mideleg, 0;                                                     \
  csrwi mie, 0;                                                         \
  .align 2;                                                             \
1:

#define RVTEST_ENABLE_SUPERVISOR                                        \
  li a0, MSTATUS_MPP & (MSTATUS_MPP >> 1);                              \
  csrs mstatus, a0;                                                     \
  li a0, SIP_SSIP | SIP_STIP;                                           \
  csrs mideleg, a0;                                                     \

#define RVTEST_ENABLE_MACHINE                                           \
  li a0, MSTATUS_MPP;                                                   \
  csrs mstatus, a0;                                                     \

#define RVTEST_FP_ENABLE                                                \
  li a0, MSTATUS_FS & (MSTATUS_FS >> 1);                                \
  csrs mstatus, a0;                                                     \
  csrwi fcsr, 0

#define RISCV_MULTICORE_DISABLE                                         \
  csrr a0, mhartid;                                                     \
  1: bnez a0, 1b

#define TIMER_INTERVAL 0x10
#define MTIME		0x0200bff8
#define MTIMECMP	0x02004000

#define EXTRA_TVEC_USER
#define EXTRA_TVEC_MACHINE
#define EXTRA_INIT
#define EXTRA_INIT_TIMER                                                \
        li a0, 0x80; 	/* Set MPIE in MSTATUS*/                        \
        csrs mstatus, a0;	 				        \
        li a0, 0x80; 	/* Set MTIE in MIE*/                            \
        csrs mie, a0;                                                   \
        li a0, MTIME;	                                                \
	lw a1, 0(a0);							\
	lw a2, 4(a0);							\
        addi a3, a1, TIMER_INTERVAL;			                \
        bleu a1, a3, set_mtimecmp_init;	                                \
        addi a2, a2, 1;					                \
set_mtimecmp_init:							\
	li a0, MTIMECMP;						\
	li a1, -1;							\
	sw a1, 0(a0);							\
	sw a2, 4(a0);							\
	sw a3, 0(a0);							\


#define INTERRUPT_HANDLER                                               \
        slli t5, t5, 1;                                                 \
        srli t5, t5, 1;                                                 \
        add t5, t5, -IRQ_M_TIMER;                                       \
        bnez t5, other_exception; /* other interrups shouldn't happen */\
        li a0, MTIME;	                                                \
	lw a1, 0(a0);							\
	lw a2, 4(a0);							\
        addi a3, a1, TIMER_INTERVAL;			                \
        bleu a1, a3, set_mtimecmp;	                                \
        addi a2, a2, 1;					                \
set_mtimecmp:								\
	li a0, MTIMECMP;						\
	li a1, -1;							\
	sw a1, 0(a0);							\
	sw a2, 4(a0);							\
	sw a3, 0(a0);							\
        /* Load general registers from stack */		                \
	lw x1, 4(sp);							\
	lw x2, 8(sp);							\
	lw x3, 12(sp);							\
	lw x4, 16(sp);							\
	lw x5, 20(sp);							\
	lw x6, 24(sp);							\
	lw x7, 28(sp);							\
	lw x8, 32(sp);							\
	lw x9, 36(sp);							\
	lw x10, 40(sp);							\
	lw x11, 44(sp);							\
	lw x12, 48(sp);							\
	lw x13, 52(sp);							\
	lw x14, 56(sp);							\
	lw x15, 60(sp);							\
	lw x16, 64(sp);							\
	lw x17, 68(sp);							\
	lw x18, 72(sp);							\
	lw x19, 76(sp);							\
	lw x20, 80(sp);							\
	lw x21, 84(sp);							\
	lw x22, 88(sp);							\
	lw x23, 92(sp);							\
	lw x24, 96(sp);							\
	lw x25, 100(sp);						\
	lw x26, 104(sp);						\
	lw x27, 108(sp);						\
	lw x28, 112(sp);						\
	lw x29, 116(sp);						\
	lw x30, 120(sp);						\
	lw x31, 124(sp);						\
	addi sp, sp, 128;						\
        mret;                                                           \


#define RVTEST_CODE_BEGIN                                               \
        .section .text.init;                                            \
        .align  6;                                                      \
        .weak stvec_handler;                                            \
        .weak mtvec_handler;                                            \
        .globl _start;                                                  \
_start:                                                                 \
        /* reset vector */                                              \
        j reset_vector;                                                 \
        .align 2;                                                       \
trap_vector:                                                            \
        /* Store general registers to stack */		                \
	addi sp, sp, -128;						\
	sw x1, 4(sp);							\
	sw x2, 8(sp);							\
	sw x3, 12(sp);							\
	sw x4, 16(sp);							\
	sw x5, 20(sp);							\
	sw x6, 24(sp);							\
	sw x7, 28(sp);							\
	sw x8, 32(sp);							\
	sw x9, 36(sp);							\
	sw x10, 40(sp);							\
	sw x11, 44(sp);							\
	sw x12, 48(sp);							\
	sw x13, 52(sp);							\
	sw x14, 56(sp);							\
	sw x15, 60(sp);							\
	sw x16, 64(sp);							\
	sw x17, 68(sp);							\
	sw x18, 72(sp);							\
	sw x19, 76(sp);							\
	sw x20, 80(sp);							\
	sw x21, 84(sp);							\
	sw x22, 88(sp);							\
	sw x23, 92(sp);							\
	sw x24, 96(sp);							\
	sw x25, 100(sp);						\
	sw x26, 104(sp);						\
	sw x27, 108(sp);						\
	sw x28, 112(sp);						\
	sw x29, 116(sp);						\
	sw x30, 120(sp);						\
	sw x31, 124(sp);						\
        /* test whether the test came from pass/fail */                 \
        csrr t5, mcause;                                                \
        li t6, CAUSE_USER_ECALL;                                        \
        beq t5, t6, write_tohost;                                       \
        li t6, CAUSE_SUPERVISOR_ECALL;                                  \
        beq t5, t6, write_tohost;                                       \
        li t6, CAUSE_MACHINE_ECALL;                                     \
        beq t5, t6, write_tohost;                                       \
        /* if an mtvec_handler is defined, jump to it */                \
        la t5, mtvec_handler;                                           \
        beqz t5, 1f;                                                    \
        jr t5;                                                          \
        /* was it an interrupt or an exception? */                      \
  1:    csrr t5, mcause;                                                \
        bgez t5, handle_exception;                                      \
        INTERRUPT_HANDLER;                                              \
handle_exception:                                                       \
        /* we don't know how to handle whatever the exception was */    \
  other_exception:                                                      \
        /* some unhandlable exception occurred */                       \
  1:    ori TESTNUM, TESTNUM, 1337;                                     \
  write_tohost:                                                         \
        sw TESTNUM, tohost, t5;                                         \
        j write_tohost;                                                 \
reset_vector:                                                           \
        RISCV_MULTICORE_DISABLE;                                        \
        INIT_SATP;                                                     \
        INIT_PMP;                                                       \
        DELEGATE_NO_TRAPS;                                              \
        li TESTNUM, 0;                                                  \
        la t0, trap_vector;                                             \
        csrw mtvec, t0;                                                 \
        CHECK_XLEN;                                                     \
        /* if an stvec_handler is defined, delegate exceptions to it */ \
        la t0, stvec_handler;                                           \
        beqz t0, 1f;                                                    \
        csrw stvec, t0;                                                 \
        li t0, (1 << CAUSE_LOAD_PAGE_FAULT) |                           \
               (1 << CAUSE_STORE_PAGE_FAULT) |                          \
               (1 << CAUSE_FETCH_PAGE_FAULT) |                          \
               (1 << CAUSE_MISALIGNED_FETCH) |                          \
               (1 << CAUSE_USER_ECALL) |                                \
               (1 << CAUSE_BREAKPOINT);                                 \
        csrw medeleg, t0;                                               \
        csrr t1, medeleg;                                               \
        bne t0, t1, other_exception;                                    \
1:      csrwi mstatus, 0;                                               \
        init;                                                           \
        EXTRA_INIT;                                                     \
        EXTRA_INIT_TIMER;                                               \
        la t0, main;                                                    \
        csrw mepc, t0;                                                  \
        csrr a0, mhartid;                                               \
	la  x2, _stack_top;	/* Set Stack Pointer sp */		\
        mret;                                                           \
1:

//-----------------------------------------------------------------------
// End Macro
//-----------------------------------------------------------------------

#define RVTEST_CODE_END                                                 \
        unimp

//-----------------------------------------------------------------------
// Pass/Fail Macro
//-----------------------------------------------------------------------

#define RVTEST_PASS                                                     \
        fence;                                                          \
        li TESTNUM, 1;                                                  \
        ecall

#define TESTNUM gp
#define RVTEST_FAIL                                                     \
        fence;                                                          \
1:      beqz TESTNUM, 1b;                                               \
        sll TESTNUM, TESTNUM, 1;                                        \
        or TESTNUM, TESTNUM, 1;                                         \
        ecall

//-----------------------------------------------------------------------
// Data Section Macro
//-----------------------------------------------------------------------

#define EXTRA_DATA

#define RVTEST_DATA_BEGIN                                               \
        EXTRA_DATA                                                      \
        .pushsection .tohost,"aw",@progbits;                            \
        .align 6; .global tohost; tohost: .dword 0;                     \
        .align 6; .global fromhost; fromhost: .dword 0;                 \
        .popsection;                                                    \
        .align 4; .global begin_signature; begin_signature:

#define RVTEST_DATA_END .align 4; .global end_signature; end_signature:

#endif
