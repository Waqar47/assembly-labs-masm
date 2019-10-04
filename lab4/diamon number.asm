INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword



.data
	
	prompt BYTE "Enter a number: ",0
	count DWORD ?
	star BYTE "*",0
	limit DWORD ?
	
.code

main PROC

	mov edx,OFFSET prompt
	call writestring
	call readint
	mov limit,eax

	mov ecx,limit ; set outer loop count
	
	mov edx,1
	L1:
	mov count,ecx ; save outer loop count
	mov ecx,limit ; set inner loop count
	
	.while ecx >= count
	
		mov eax,edx
		call writedec
		dec ecx
	.endw
	;loop L2 ; repeat the inner loop
	mov ecx,count ; restore outer loop count

	add edx,1
	call crlf
	loop L1
	

	;HALF DIAMOND
	mov ecx,limit ; set outer loop count
	mov edx,limit
	;sub ecx,1
	L3:
	
	mov count,ecx ; save outer loop count
	mov ecx,1 ; set inner loop count
	
	.while ecx <= count
	
		mov eax,edx
		call writedec

		inc ecx
	.endw
	;loop L2 ; repeat the inner loop
	mov ecx,count ; restore outer loop count

	sub edx,1
	call crlf
	loop L3

	call crlf
	
	

exit
main ENDP


	




END main

