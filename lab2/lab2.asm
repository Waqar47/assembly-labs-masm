INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword



.data

var1 byte "Helloww",0
var byte "Enter this number",0


;declararation
search dword ?


.code

main PROC

	mov edx,offset var
	call WriteString

	mov eax,5
	mov ebx,5
	mul ebx
	call writedec

exit
main ENDP


END main