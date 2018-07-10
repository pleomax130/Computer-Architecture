SYSCALL = 0x80
SYSEXIT = 1
SYSWRITE = 4
SYSREAD = 3
EXIT = 0
STDOUT = 1
STDIN = 0
n = 20
.align 32

.data
	
.bss
	.comm numberA, 1024
	.comm numberB, 1024
.text
.global _start

_start:
	mov $1023, %edi
	movb $0, numberA(,%edi,1)
	movb $1, numberB(,%edi,1)
    mov $1, %esi
fibo:
	mov $1023, %edi
loop:
	movb numberA(,%edi,1), %al
    movb numberB(,%edi,1), %bl
dodawanie:
	movb %bl, numberA(,%edi,1)
	cmpb $1, %dl
	jne setNoCarry
	stc
	jmp dodawanieCont
setNoCarry:
	clc
dodawanieCont:
    adcb %al, %bl
	jc setcarry
	movb $0, %dl
save:
    movb %bl, numberB(,%edi,1)
	jmp noCarry

setcarry:
	movb $1, %dl
	clc
	jmp save
	
noCarry:
	dec %edi
	cmp $0, %edi
	jg loop
	
    inc %esi
    cmp $n, %esi
    jl fibo

koniec:
	mov $SYSEXIT, %eax
	mov $EXIT, %ebx
	int $SYSCALL
