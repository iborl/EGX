CC = x86_64-elf-gcc
LD = x86_64-elf-ld

CFLAGS = -O0 -ffreestanding -Wall -Wextra

ISO := bios-egx.iso
KERNEL := egx.elf
SRCS := $(shell find src -name '*.c')
OBJS := $(SRCS:src/%.c=objs/%.o)

$(ISO): $(KERNEL)
	cp $(KERNEL) iso/boot/$(KERNEL)
	grub-mkrescue -o $@ iso/
.PHONY: all clean iso
iso: $(ISO)

all: $(KERNEL)

egx.elf: $(OBJS)
	$(LD) -T ld $(OBJS) -o $@

objs/%.o: src/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@
clean:
	rm -rf objs $(KERNEL)

