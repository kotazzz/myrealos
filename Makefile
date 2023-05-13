DISK_SIZE=2MB

make:
	nasm -f bin kernel.asm -o kasm.bin
	gcc -m32 -c kernel.c -o kc.o
	ld -m elf_i386 -o kernel.bin kasm.bin kc.o -T link.ld
	dd if=/dev/zero of=boot.img bs=$(DISK_SIZE) count=1
	dd if=kasm.bin of=boot.img conv=notrunc



