; Double word
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
	mov ecx, LENGTHOF source/4
	mov esi, OFFSET source
	mov edi, OFFSET target
	rep movsd

	quit:
	invoke ExitProcess,0
main endp
end main