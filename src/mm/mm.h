#ifndef MM_H
#define MM_H

#include "../def.h"

// Memory will be structured in banks, with each bank relating to a node. Banks are specified using struct node and it's typedef node_t.

typedef struct node {
	paddr_t start;
	paddr_t end;
} node_t;

#endif
