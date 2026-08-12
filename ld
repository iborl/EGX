ENTRY(egx)

MEMORY
{
	ROM (rx) : ORIGIN = 0, LENGTH = 256k
	RAM (wx) : org = 0x00100000, len = 1M
}

SECTIONS
{
	.text 0x00100000 : {
		*(.text*)
	} 

	.data : {
		*(.data*)
	}

	.rodata : {
		*(.rodata*)
	}
}
