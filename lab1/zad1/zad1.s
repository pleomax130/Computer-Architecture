.data 
	EXIT = 1
	ERR = 0
	SYSREAD = 3
	SYSWRITE = 4
	STDIN = 0
	STDOUT = 1
	SYSCALL = 0x80
	
msg:
	.ascii "Ala ma kota"
	msg_len = . - msg

.text
.global _start

_start:
	mov $msg_len, %eax
	mov $2, %ebx
	mov $0, %edx
	divl %ebx
	mov %eax, %edx
	mov $msg_len, %esi
	dec %esi
	mov $0, %edi
loop:
	mov msg(,%edi,1), %al
	mov msg(,%esi,1), %bl
	mov %al, msg(,%esi,1)
	mov %bl, msg(,%edi,1)
	
	inc %edi
	dec %esi
	cmp %edx, %edi
	jle loop
	
	mov $SYSWRITE, %eax
	mov $STDOUT, %ebx
	mov $msg, %ecx
	mov $msg_len, %edx
	int $SYSCALL
	
	mov $EXIT, %eax
	mov $ERR, %ebx
	int $SYSCALL
