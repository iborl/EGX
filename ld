ENTRY(egx)

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

	.data ALIGN(16) : {
		*(.data*)
	}

	.rodata ALIGN(16) : {
		*(.rodata*)
	}
}
