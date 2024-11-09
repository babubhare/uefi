OSFMount -a -t file -f ..\..\drive\drive.hdd -s 40M -o rw -m F:

del "F:\EFI\Boot\BOOTX64.EFI"
del "F:\ThatOS64\loader.bin"
timeout 3

move /y BOOTX64.EFI "F:\EFI\Boot\"
move /y loader\loader.bin "F:\ThatOS64\"

timeout 3

OSFMount -D -m F:

pause

