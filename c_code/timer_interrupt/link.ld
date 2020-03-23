OUTPUT_ARCH( "riscv" )
ENTRY(_start)

MEMORY
{
 ram (rwx) : ORIGIN = 0x80000000, LENGTH = 1M
}

PROVIDE (_stack_top = ORIGIN(ram) + LENGTH(ram));

SECTIONS
{
  . = 0x80000000;
  .text.init : { *(.text.init) }
  .tohost : { *(.tohost) }
  .text : { *(.text) }
  . = 0x80002000;
  .sdata (ALIGN(0x1000)): { *(.sdata) }
  .bss : { *(.bss) }
  _end = .;
}

