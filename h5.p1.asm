; change all s characters into p
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
alpha BYTE "mississippi",0
.code
main proc
	mov edi, OFFSET alpha
	mov al,'s' ; look for 's'
	mov bl,'p' ; replace with 'p'
	mov ecx, LENGTHOF alpha
	cld
	L2: 
	repne scasb
	jnz quit
	dec edi

L1: mov [edi], bl
	jmp L2

quit:
	invoke ExitProcess,0
main endp
end main