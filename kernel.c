void kernel_main() {
    char *video_memory = (char *) 0xB8000; // Dirección de la memoria de video en modo texto
    video_memory[0] = 'H';  // Escribimos la letra 'H' en la pantalla
    video_memory[1] = 0x07; // Color blanco sobre negro
}

