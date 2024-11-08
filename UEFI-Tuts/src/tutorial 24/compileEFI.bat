gcc -Wall -Werror -m64 -mabi=ms -ffreestanding -I ThatCLib -c efimain.c -o efimain.o -g 
gcc -Wall -Werror -m64 -mabi=ms efimain.o -nostdlib -shared -Wl,-dll -Wl,--subsystem,10 -e efi_main -o BOOTX64.EFI -g

gcc -Wall -Werror -m64 -mabi=ms -ffreestanding -Wl,--oformat=binary -e main -c loader/loader.c -o loader/loader.bin -g

REM del /Q *.o

pause
