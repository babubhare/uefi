gcc -Wall -Werror -m64 -mabi=ms -ffreestanding -c efimain.c -o efimain.o -g -save-temps
gcc -Wall -Werror -m64 -mabi=ms efimain.o -nostdlib -shared -Wl,-dll -Wl,--subsystem,10 -e efi_main -o BOOTX64.EFI -g -save-temps


