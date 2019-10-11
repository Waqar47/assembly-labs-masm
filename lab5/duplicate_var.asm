INCLUDE Irvine32.inc

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword


.data
	
	msg BYTE "Enter a number",0
	arr DWORD 4 dup(?)
	len=($-arr)/4
	
	var1 byte 10 dup("Name")
.code



main PROC

	mov edx,OFFSET  msg
	call writestring
	call crlf

	mov edx,OFFSET var1
	call writestring
	call crlf

exit
main ENDP
END main

