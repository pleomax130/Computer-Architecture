SYSCALL = 0x80
SYSEXIT = 1
SYSWRITE = 4
SYSREAD = 3
EXIT = 0
STDOUT = 1
STDIN = 0
#numberA = 0
#numberB = 1
n = 42
.align 32

.data
	numberA: .int  0
	numberB: .int  1
.bss
	.comm output, 1024
.text
.global _start

_start:
	mov $n, %esi
    mov $1, %edi
    mov (numberA), %eax
    mov (numberB), %ebx
loop:
	mov %ebx, %ecx
    add %eax, %ebx
    mov %ecx, %eax
    
    inc %edi
    cmp $n, %edi
    jl loop


koniec:
	mov $SYSEXIT, %eax
	mov $EXIT, %ebx
	int $SYSCALL
