default:
	riscv64-unknown-elf-gcc -march=rv32g -mabi=ilp32 -static -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -T./link.ld crt0.S main.c -o main.elf
	riscv64-unknown-elf-objdump --disassemble-all --disassemble-zeroes main.elf > main.dump
	elf2hex 1 1048576 main.elf > main.hex
clean:
	rm -rf main.elf main.dump main.hex
