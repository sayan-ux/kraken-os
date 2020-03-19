nasm -f elf32 kernel.asm -o ksm.o
gcc -m32 -c kernel.c -o kc.o
ld -m elf_i386 -T link.ld -o kernel.bin ksm.o kc.o
cp kernel.bin kraken/boot/kernel.bin
grub-mkrescue -o kraken.iso kraken/
