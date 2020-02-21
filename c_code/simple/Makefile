default:
	riscv32-unknown-elf-gcc -g -ffreestanding -O0 -Wl,--gc-sections -nostartfiles -nostdlib -nodefaultlibs -Wl,-T,link.ld crt0.s main.c -o main.elf
	riscv32-unknown-elf-objdump -d main.elf > main.dump
	elf2hex 1 1048576 main.elf > main.hex
clean:
	rm -rf main.elf main.dump main.hex
