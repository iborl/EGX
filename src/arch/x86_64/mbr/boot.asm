[BITS 16]
[ORG 0x7C00]

mov ah, 0x42
mov 

hlt

times 510-($-$$) db 0
dw 0xAA55
