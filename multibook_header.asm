section .multiboot
align 4
dd 0x1BADB002            ; Multiboot magic number
dd 0x0                   ; Flags (0 para evitar dependencias de memoria)
dd -(0x1BADB002 + 0x0)   ; Checksum (debe sumar 0 con los anteriores)

section .bss
align 16
stack_bottom:
    resb 16384           ; 16 KB de stack
stack_top:
