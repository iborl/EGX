// type.h
// used as a centralized header file for providing type definitions based on the given architecture

#ifndef EGX_TYPE_H
#define EGX_TYPE_H

#include "config/arch.h"
 
#if defined(CONFIG_ARCH_AMD64)
#include "arch/x86_64/types.h"
#else
#error "[EGX]: no architecture selected for type definitions"
#endif

// as of right now, AMD64 is the only architecture that has type definitions

#endif
