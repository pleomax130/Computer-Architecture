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

.bss
	.comm change, 3
	.comm output, 100

.text
.global _start

_start:
	mov $0, %edi
	mov $0, %ecx
loop:
	mov $0, %esi
	mov msg(,%edi,1), %al
dzielenie:
	movl $10, %ebx
    movl $0, %edx
    divl %ebx
    addl $48, %edx
    movb %dl, change(,%esi,1)
    inc %esi
	inc %ecx
    cmp $0, %al
	jz changeOrder
    jmp dzielenie
changeOrder:
	mov $0, %ebp
	mov %ecx, %edx
	dec %edx
toOutput:
	mov change(,%ebp,1), %al
	mov %al, output(,%edx,1)
	inc %ebp
	dec %edx
	cmp %esi, %ebp
	jl toOutput
koniec:		
	inc %edi
	cmp $msg_len, %edi
	jl loop

	mov $SYSWRITE, %eax
	mov $STDOUT, %ebx
	mov $output, %ecx
	mov $100, %edx
	int $SYSCALL
	
	mov $EXIT, %eax
	mov $ERR, %ebx
	int $SYSCALL
