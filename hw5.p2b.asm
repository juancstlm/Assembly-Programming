; reversearray.asm reverses an array \
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
source BYTE 24 DUP(9)
target BYTE 24 DUP(?)
.code
main proc
	cld
	mov ecx, LENGTHOF source/2
	mov esi, OFFSET source
	mov edi, OFFSET target
	rep movsw

	quit:
	invoke ExitProcess,0
main endp
end main