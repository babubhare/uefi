OSFMount -a -t file -f ..\..\drive\drive.hdd -s 40M -o rw -m F:

cp /y BOOTX64.EFI "F:\EFI\Boot\"

cp /y loader\loader.bin "F:\ThatOS64\"

timeout 3

OSFMount -D -m F:

pause

