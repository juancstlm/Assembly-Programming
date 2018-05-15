; max number 
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
val1 DWORD 3
val2 DWORD 13
val3 DWORD 8
val4 DWORD 9
max DWORD ?

.code
main proc
	mov eax, val1
	mov ebx, val2
	mov ecx, val3
	mov edx, val4
	call MaxOfFour
	mov max, eax
	invoke ExitProcess,0
main endp
MaxOfFour PROC
	push eax
	push ebx
	push ecx
	push edx
	mov ecx, 3
	L1:
	pop eax
	pop ebx
	cmp eax, ebx
	ja small
	push ebx
	sub ecx,1
	jnz L1
	small: 
	push eax
	sub ecx,1
	jnz L1
	pop eax
	ret
MaxOfFour ENDP
end main