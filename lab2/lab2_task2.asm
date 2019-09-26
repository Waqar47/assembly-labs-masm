INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword



.data

.code

main PROC

	
	mov eax,5
	add eax,2

	;7 to edx
	mov edx,eax

	mov eax,6
	mov ebx,4
	sub eax,ebx

	;7 to ebx so > 7 * 2(eax)
	mov ebx,edx
	mul ebx

	call writedec
	call crlf

	;PART B
	mov eax,7
	mov ebx,8
	mul ebx
	mov edx,eax
	;^56
	
	mov eax,3
	mov ebx,2
	mul ebx
	mov eax,edx

	mov ebx,eax
	sub eax,ebx
	
	call writedec	
	call crlf
	;PART C

	mov eax, 4
	mov ebx,2
	mov edx,0
	div ebx
	
	;store 2 in edx
	mov edx,eax
	;4+4*2
	mov eax,4
	add eax,4
	mov ebx,2
	sub eax,ebx

	;(4/2)[EDX] * (4+4-2)[EAX]
	mov ebx,edx
	mul ebx
	;-- /2

	mov ebx,2
	mov edx,0
	div ebx
	call writedec
	call crlf
	

	

exit
main ENDP


END main