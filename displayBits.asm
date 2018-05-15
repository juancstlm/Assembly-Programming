; max number 
.386
.model flat,stdcall
.stack 4096
INCLUDE Irvine32.inc
ExitProcess proto,dwExitCode:dword

.data
num1 DWORD 2367
num2 DWORD 4792

.code
main proc
	mov eax, [num1]
	call WriteBin
	mov al, 10
	call WriteChar
	mov eax, [num2]
	call WriteBin
	mov al, 10
	call WriteChar
	mov ebx, [num1]
	mov eax, [num2]
	xor eax, ebx
	call WriteBin
	mov esi, eax
	mov al, 10
	call WriteChar
	call displayBits
	displayBits PROC
		mov ecx, 32
		mov ebx, 1
		shl ebx, 31
		l1:	
			mov edi, esi
			and edi, ebx
			jnz write1
			jmp write0
			write1: mov al, '1'
				call WriteChar
				jmp return
			write0: mov al, '0'
				call WriteChar
			return:
			shl esi, 1
		loop l1
	displayBits ENDP

	invoke ExitProcess,0
main endp
end main