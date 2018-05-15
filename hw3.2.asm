.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array BYTE 4,5,6,7,8,9

.code
main proc
	mov esi, OFFSET array
	 mov ecx, LENGTHOF array/2
L1:
	mov al, [esi]
	inc esi
	mov bl, [esi]
	dec esi
	mov [esi], bl
	inc esi
	mov [esi], al
	inc esi
	loop L1

	invoke ExitProcess,0 ;place breakpoint here
main endp
end main
