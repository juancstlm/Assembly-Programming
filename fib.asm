; fib.asm calculates the first 9 fibbonachi nunbers

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
fib BYTE ?
.code
main proc
	mov esi, OFFSET fib
	mov ecx, 9
	mov ax, 0
	mov bx, 1
	add [esi], ax
	add [esi]+1, bx
	add esi,2
L1: add [esi], bx
	add [esi], ax
	mov ax, bx
	mov bx, [esi]
	inc esi
	loop L1

	invoke ExitProcess,0
main endp
end main
