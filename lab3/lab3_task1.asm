INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword



.data
	msg1 BYTE "Number of table: ",0
	msg2 BYTE "Range for tabel: ",0

	cross BYTE " x ",0
	equal BYTE " = ",0

	multi DWORD ?
	range DWORD ?
.code

main PROC

	mov edx,OFFSET msg1
	call writestring
	call readint
	mov multi,eax
	call crlf

	mov edx,OFFSET msg2
	call writestring
	call readint
	mov range,eax
	call crlf

	mov ecx,1
	.while ecx <= range
		;print n
		mov eax,multi
		call writedec

		;print n x 
		mov edx, OFFSET cross
		call writestring

		;print n x count
		mov eax,ecx
		call writedec

		;print n x count =
		mov edx,OFFSET equal
		call writestring

		;now multiply
		mov eax,multi
		mov ebx,ecx
		mul ebx

		;print n x count = result
		call writedec

		call crlf
	inc ecx
	.endw

	

	
	

exit
main ENDP


END main