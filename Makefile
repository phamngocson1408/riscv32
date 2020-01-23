#=======================================================================
# Makefile for Verilog simulation w/ VCS
#-----------------------------------------------------------------------
# Yunsup Lee (yunsup@cs.berkeley.edu)
#
# This makefile will build a rtl simulator and run various tests to
# verify proper functionality.
#

default: all

base_dir = $(abspath ..)
generated_dir = $(abspath ./generated-src)
riscv32_dir = $(abspath ./riscv32)
core_dir = $(riscv32_dir)/$(CORE_DIR)
include_dir = $(core_dir)/include
mem_gen = $(VLSI_MEM_GEN)
sim_dir = .
output_dir = $(sim_dir)/output

BACKEND ?= v
TB ?= TestDriver

include $(base_dir)/Makefrag
include $(sim_dir)/Makefrag
ifneq ($(filter run% %.run %.out %.vpd %.vcd,$(MAKECMDGOALS)),)
-include $(riscv32_dir)/$(long_name).d
endif
include $(base_dir)/vsim/Makefrag-verilog

all: $(simv)
debug: $(simv_debug)

clean:
	rm -rf simv* csrc *.key DVE* *.h *.a *.daidir output

.PHONY: default all debug clean
