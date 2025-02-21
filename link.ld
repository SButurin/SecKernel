OUTPUT_FORMAT(elf32-i386)
ENTRY(_start)

SECTIONS
{
    . = 1M; /* Cargar el kernel en la dirección 1MB */

    .text ALIGN(4K) : {
        *(.multiboot)   /* Incluir el encabezado Multiboot */
        *(.text)        /* Incluir el código del kernel */
    }

    .bss ALIGN(4K) : {
        *(COMMON)
        *(.bss)
    }
}

