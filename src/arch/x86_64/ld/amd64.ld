/* Specify entry point to be _start, which is in the bootstrapper */
ENTRY(_start)

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

	.bss ALIGN(16) : {
		*(.bss*)
	}

	.data ALIGN(16) : {
		*(.data*)
	}

	.rodata ALIGN(16) : {
		*(.rodata*)
	}
}
