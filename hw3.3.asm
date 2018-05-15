.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
array DWORD 0,2,5,9,10 ;sum should be 10

.code
main proc
	mov esi, OFFSET array
	mov ebx, [esi]
	mov ecx, LENGTHOF array
	dec ecx
	add esi, 4
	mov eax, 0
L1: neg ebx
	add ebx, [esi]
	add eax, ebx
	mov ebx, [esi]
	add esi, 4
	loop L1

	invoke ExitProcess,0
main endp
end main
