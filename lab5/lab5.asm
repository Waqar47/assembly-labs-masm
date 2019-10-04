INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword


.data
	
	var1 dword 10
	var2 word 20
	
	message1 BYTE "Enter the number ",0
	message2 BYTE "Number is greater than 5 ",0
	message3 BYTE "Number is less than 5 ",0
	message4 BYTE "Number is equal to 5 ",0
.code

;movzx == unsigned && movsx == signed

;MOVZX agli tamam nibbles ko 0 krdeta hay lik 16BIT value to store in 32BIT register [EAX]
;multpply mai overflow value EAX && EDX handle krty hy


;MOVZX 00000000 --> 0000VALUE (instructions used to move +ve value)
;MOVSX 00000000 ---> FFFFVALUE (instruction used to move =ve value)
main PROC

	mov edx,OFFSET message1
	call writestring
	call readdec
	call crlf
	.IF eax > 5
		mov edx,OFFSET message2
		call writestring
	
	.ELSEIF eax < 5
		mov edx,OFFSET message3
		call writestring

	.ELSE
		mov edx,OFFSET message4
		call writestring
	.ENDIF
	
	
	call crlf
	mov bx,-10
	movsx eax,bx

	call writeint
	call crlf



	;MOVZX agli tamam nibbles ko 0 krdeta hay lik 16BIT value to store in 32BIT register [EAX]
	movzx eax,var2
	call writedec

	call crlf

	mov eax,-6
	mov ecx,20


	;LABEL LOOPING -- loop iterates N times where N=ECX
	anotherstate:

	inc eax
	call writedec
	call crlf

	loop anotherstate


	






exit
main ENDP
END main

