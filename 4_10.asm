; Finds the largest value in an array 
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array DWORD 8,9,2,1,4
max DWORD ?

.code
main proc
    mov esi, OFFSEST array
    mov ecx, SIZEOF array
    call MaxNum

    invoke ExitProcess,0
main ENDP
MaxNum proc
    L2:
    push esi
    add esi, 4
    sub ecx, 1

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

    ret
MaxNum endp
end main