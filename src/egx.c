#include "mm/mm.h"

#define CONFIG_GRUB

#ifdef CONFIG_GRUB
// multiboot section for GRUB
// GRUB needs multiboot headers
__attribute__((section(".multiboot"))) 
const unsigned int header[] = {
	0xE85250D6,
	0,
	16,
	-(0xE85250D6 + 0 + 16),

};

#else
#warn "Compiling kernel without multiboot headers"
#endif

void egx(void) {
	node_t nodez;
	nodez.start = 0x20000000;
	nodez.end = 0x420000000;

	while(1) {
		asm volatile ("hlt");
	}
}
