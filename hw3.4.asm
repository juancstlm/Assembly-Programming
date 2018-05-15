.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array1 WORD 1,2,5,9,10
array2 DWORD ?

.code
main proc
	mov esi, OFFSET array1
	mov edi, OFFSET array2
	mov ecx, LENGTHOF array1
L1: mov ax, [esi]
	mov [edi], ax
	add edi, 4
	add esi, 2
	loop L1

	invoke ExitProcess,0
main endp
end main
