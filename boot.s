global _start

section .text
_start:
    cli                 ; Desactiva interrupciones
    mov esp, stack_top  ; Configura la pila
    extern kernel_main  ; Declara que `kernel_main` está en C
    call kernel_main    ; Llama a `kernel_main`
    hlt                 ; Detiene la CPU

section .bss
align 16
stack_bottom:
    resb 16384          ; Reservamos 16 KB para la pila
stack_top:

