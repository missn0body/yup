section .data
	confirm:	db 'y', 0Ah

section .text
global _start

_start:
	inc	ax
	inc	di		; write to stdout
	mov	esi, confirm
	mov	dl, 2		; 1 char, plus newline
loop:
	syscall
	xor	ax, ax
	inc	ax
	jmp	loop
