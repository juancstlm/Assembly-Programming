; coppy an array to another using string instructions
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
	mov ecx, LENGTHOF source
	mov esi, OFFSET source
	mov edi, OFFSET target
	rep movsb

	quit:
	invoke ExitProcess,0
main endp
end main