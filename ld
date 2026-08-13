ENTRY(egx)

MEMORY
{
	ROM (rx) : ORIGIN = 0, LENGTH = 256k
	RAM (wx) : org = 0x00100000, len = 1M
}

SECTIONS
{
	. = 0x00100000;

	.multiboot ALIGN(8) :
	{
		KEEP(*(.multiboot))
	}
	.text ALIGN(16) : {
		*(.text*)
	} 

	.data : {
		*(.data*)
	}

	.rodata : {
		*(.rodata*)
	}
}
