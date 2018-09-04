;Exchanging Pairs of Array Values
.386
.model flat,stdcall
.stack 4096
INCLUDE Irvine32.inc
ExitProcess proto,dwExitCode:dword

.data
array BYTE 1,2,3,4,5,6

.code
main proc
	mov esi, OFFSET array
	mov ecx, SIZEOF array /2
	L1:
		mov al, [esi]
		mov bl, [esi+1]
		mov [esi+1], al
		mov [esi], bl
		add esi, 2
	Loop L1
	invoke ExitProcess,0
main endp
end main