.intel_syntax noprefix

// The state GRUB leaves us in is Protected Mode, meaning that we can only execute 32 bit instructions

// In order to transition to Long Mode, we must set up paging and enable paging

// Setting up pre-defined multiboot header values
.set MAGIC, 0xE85250D6
.set ARCH, 0
.set LEN, 16
.set SUM, -(MAGIC + ARCH + LEN)

// Setting up multiboot header
.section .multiboot
.align 8
.long MAGIC
.long ARCH
.long LEN
.long SUM

// Setting up the stack
.section .bss
.align 16

stack_bottom:
.skip 16384
stack_top:


.section .text
.global _start

_start:

mov esp, stack_top

cli
halt:
hlt
jmp halt
