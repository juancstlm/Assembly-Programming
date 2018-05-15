; reversearray.asm reverses an array \
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
intarray DWORD 1,2,4,6,7,9
.code
main proc
	mov esi, 0 ;index register
	mov edi,(LENGTHOF intarray-1)*4
	mov ecx,(LENGTHOF intarray)/2
L1: mov eax, intarray[esi]
	mov ebx, intarray[edi]
	mov intarray[edi], eax
	mov intarray[esi], ebx
	add esi, 4
	sub edi, 4
	loop L1

	invoke ExitProcess,0
main endp
end main
