INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword



.data
	num1 BYTE "Enter Dividend: ",0
	num2 BYTE "Enter Divisor: ",0

	division BYTE "Quotient = ",0
	rem BYTE "Remainder = ",0
	
	n1 DWORD ?
	n2 DWORD ?
.code

main PROC

	mov edx,OFFSET num1
	call writestring
	call readint
	call crlf
	mov n1,eax

	mov edx,OFFSET num2
	call writestring
	call readint
	mov n2,eax
	call crlf

	;divison
	mov eax,
	mov edx,OFFSET division
	call writestring



	
	

exit
main ENDP


END main