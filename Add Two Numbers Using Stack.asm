; Add Two Numbers using stack 
.386
.model flat,stdcall
.stack 4096
INCLUDE Irvine32.inc
ExitProcess proto,dwExitCode:dword

.data
val1 DWORD ?
val2 DWORD ?

.code
main proc
	mov val1, 3
	mov val2, 4
	push val2
	push val1
	y_param EQU [ebp+12]
	x_param EQU [ebp+8]
	call AddTwo
	invoke ExitProcess,0
main endp
AddTwo PROC
		push ebp
		mov ebp, esp			; base of the stack frame
		mov eax, y_param		; second parameter
		add eax, x_param		; first parameter
		pop ebp
		ret 8					; clean up the stack
AddTwo ENDP
end main