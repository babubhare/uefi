gcc -Wall -m64 -Wno-unused-variable -mabi=ms -c efimain.c -o efimain.o -save-temps -g
gcc -Wall  -m64 -mabi=ms efimain.o -nostdlib -shared -Wl,-dll -Wl,--subsystem,10 -Wl,--image-base -Wl,0x10000000 -e efi_main -o BOOTX64.EFI 

gcc -Wall -O0 -m64 -mabi=ms -ffreestanding -Wl,--oformat=binary -e main -c loader/loader.c -o loader/loader.bin -save-temps -g

@echo off
REM del /Q *.o
@echo on

pause
