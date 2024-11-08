rm -f *.o *.EFI *.bin loader/*.bin

gcc -Wall -m64 -Wno-unused-variable -mabi=ms -c efimain.c -o efimain.o -save-temps -g
gcc -Wall  -m64 -mabi=ms efimain.o -nostdlib -shared -Wl,-dll -Wl,--subsystem,10 -Wl,--image-base -Wl,0x10000000 -e efi_main -o BOOTX64.EFI 

gcc -Wall -O0 -m64 -mabi=ms -ffreestanding -Wl,--oformat=binary -e main -c loader/loader.c -o loader/loader.bin -save-temps -g


timeout 3
OSFMount -a -t file -f ..\..\drive\drive.hdd -s 40M -o rw -m F:

cp /y BOOTX64.EFI "F:\EFI\Boot\"

cp /y loader\loader.bin "F:\ThatOS64\"

timeout 3

OSFMount -D -m F:

timeout 3

qemu-system-x86_64 -drive format=raw,unit=0,file=..\..\drive\drive.hdd -bios ..\..\bios64.bin -m 256M -display sdl -vga std -name TESTOS -machine q35

