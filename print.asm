.data
	stderr_code: dw 666 ; For the meme, lol
	stdout_msg: db "Hello world", 0xa
	stdout_len: equ $ - stdout_msg

.text
	global _start
	_start:
		mov eax, 4
		mov ecx, stdout_msg
		mov edx, stdout_len
		mov ebx, 1
		int 0x80
		mov eax, 0x01
		mov ebx, stderr_code
		int 0x80
