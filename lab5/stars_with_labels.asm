INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword


.data
	
	star BYTE "*",0
	message BYTE "Enter a number: ",0
	limit DWORD ?
	outer_loop DWORD ?
.code


main PROC
	mov edx,OFFSET message
	call writestring
	call readint

	mov limit,eax
	

	;[FORWARD LOOP]
	mov eax,1
	mov ecx,limit ; outer loop counter
	L3:
		
		;restore L1 count
		mov outer_loop,ecx
		
		mov ecx,eax
		L4:
			mov edx,OFFSET star
			call writestring
		
		loop L4 ; repeat inner loop
		
		inc eax
		call crlf
		
		
		mov ecx,outer_loop

	loop L3 ; repeat outer loop


	;[REVERSE LOOP]
	mov ecx,limit ; outer loop counter

	L1:
		
		;restore L1 count
		mov outer_loop,ecx
		
		L2:
			mov edx,OFFSET star
			call writestring
		
		loop L2 ; repeat inner loop

		call crlf
		mov ecx,outer_loop
	loop L1 ; repeat outer loop



	






exit
main ENDP
END main

