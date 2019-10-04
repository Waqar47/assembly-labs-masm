INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword



.data
	msg1 BYTE "Enter num1: ",0
	msg2 BYTE "Enter num2: ",0


	cube BYTE "Cube is : ",0
	square BYTE "Square is: ",0

	result1 BYTE "num1 results: ",0dh,0ah,0
	result2 BYTE "num2 results: ",0dh,0ah,0

	num1 DWORD ?
	num2 DWORD ?

	cube_param DWORD ?
	sqr_param DWORD ?
	
	dummy BYTE "My name is Waqar Ahmed",0dh,0ah,0
.code

main PROC

	
	mov edx,OFFSET msg1
	call writestring
	call readint

	mov num1,eax

	mov edx,OFFSET msg2
	call writestring
	call readint
	call crlf
	mov num2,eax

		mov edx,OFFSET result1
		call writestring

		;num1 cube
		mov edx,OFFSET cube
		call writestring
		mov edx,num1
		mov cube_param,edx
		;cubing
		mov eax,cube_param
		mov ebx,cube_param
		mul ebx
		mov ebx,cube_param
		mul ebx
		
		call writedec
		call crlf

		;num1 square
		mov edx,OFFSET square
		call writestring
		mov edx,num1
		mov sqr_param,edx
		;squaring
		mov eax,sqr_param
		mov ebx,sqr_param
		mul ebx

		call writedec
		call crlf
		call crlf
		 
		mov edx,OFFSET result2
		call writestring
		;num1 cube
		mov edx,OFFSET cube
		call writestring
		mov edx,num2
		mov cube_param,edx
		;cubing
		mov eax,cube_param
		mov ebx,cube_param
		mul ebx
		mov ebx,cube_param
		mul ebx
		
		call writedec
		call crlf
		


		;num1 square
		mov edx,OFFSET square
		call writestring
		mov edx,num2
		mov sqr_param,edx
		;squaring
		mov eax,sqr_param
		mov ebx,sqr_param
		mul ebx

		call writedec
		call crlf
	
	

exit
main ENDP


	




END main

