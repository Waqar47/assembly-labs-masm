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
	mov eax,n1
	mov ebx,n2
	mov edx,0
	div ebx

	;MOVE remainder to non-use register
	mov ebx,edx

	;PRINT DIVISION
	mov edx,OFFSET division
	call writestring
	call writedec
	call crlf

	
	;PRINT REMAINDER
	mov edx,OFFSET rem
	call writestring
	mov eax,ebx
	call writedec
	call crlf





	
	

exit
main ENDP


END main