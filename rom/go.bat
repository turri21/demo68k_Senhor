rem toolchain available 
rem https://gnutoolchains.com/m68k-elf/

m68k-elf-gcc -Wall -nostdlib -nodefaultlibs -fomit-frame-pointer -m68000 -c rom.c
m68k-elf-ld -T 68k.ld rom.o
m68k-elf-objcopy -I coff-m68k -O binary a.out rom.bin

rem disassembly can be generated using
rem m68k-elf-objdump -d a.out