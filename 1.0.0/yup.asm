section .data
	confirm:	db 'y', 0Ah

section .text
global _start

_start:
	xor	ax, ax		; prepare for future write calls
	inc	ax
	xor	di, di		; write to stdout
	inc	di
	mov	esi, confirm
	mov	dl, 2		; 1 char, plus newline
loop:
	syscall
	xor	ax, ax
	inc	ax
	jmp	loop
