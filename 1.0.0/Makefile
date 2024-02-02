ASM = nasm
ASMFLAGS = -f elf64 -Oxv
LD = ld
RM = rm

yup.o: yup.asm
	$(ASM) $(ASMFLAGS) $^

yup: yup.o
	$(LD) -o $@ $^
	strip $@

.PHONY: all clean

all: yup

clean:
	$(RM) *.o yup
