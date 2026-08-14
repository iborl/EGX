CONFIG_ARCH:=AMD64
CONFIG_BOOT:=GRUB
CONFIG_BOOTSTRAP:=0
ARCH_PATH:=src/arch
KERNEL_NAME:=egx.elf
BOOTSTRAP_NAME:=bootstrap.s
OBJ_PATH:=.obj
# CONFIG_ARCH - Architecture to compile for
# CONFIG_BOOT - Bootloader to compile for
# CONFIG_BOOTSTRAP - Whether to assemble bootstrapper.s or not,
# usually this is a yes (1) on 64 bit architectures, like AMD64
# ARCH_PATH - Path to the architecture-specific directory
# KERNEL_NAME - Name of the final-produced kernel ELF file
# BOOTSTRAP_NAME - Name of the bootstrapper assembly source
# OBJ_PATH - Path to the hidden objects directory

.PHONY: $(KERNEL_NAME)

all: $(KERNEL_NAME)

ifneq ($(CONFIG_BOOT),GRUB)
$(error Cannot use any other bootloaders at the moment, GRUB is required)
endif

ifeq ($(CONFIG_ARCH),AMD64)
CC := x86_64-elf-gcc
LD := x86_64-elf-ld
AS := x86_64-elf-as
	
ARCH_PATH := $(ARCH_PATH)/x86_64
LDSCRIPT := $(ARCH_PATH)/ld/amd64.ld
CONFIG_BOOTSTRAP := 1
else
$(error Cannot use specificed architecture)
endif

ifeq ($(CONFIG_BOOTSTRAP),1)
	# Assemble bootstrapper
BOOTSTRAP_PATH:=$(ARCH_PATH)/bootstrap/$(BOOTSTRAP_NAME)

$(BOOTSTRAP_PATH:.s=.o): $(BOOTSTRAP_PATH)
	$(AS) $(BOOTSTRAP_PATH) -o $(OBJ_PATH)/$(BOOTSTRAP_NAME:.s=.o)
	
$(KERNEL_NAME): $(BOOTSTRAP_PATH:.s=.o)
	$(LD) -T $(LDSCRIPT) $(OBJ_PATH)/$(BOOTSTRAP_NAME:.s=.o) -o $(KERNEL_NAME)
endif

# No .c files to compile right now
