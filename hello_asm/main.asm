section .data
	msg: db 'Hello World!', 10
	len: equ $-msg
section .text
	global _start

_start:	      
	;Prints wut
	mov eax,4
	mov ebx,1
	mov ecx, msg
	mov edx, len
	int 80h
	;Closes the program
	mov eax, 1
	mov ebx, 0
	int 80h