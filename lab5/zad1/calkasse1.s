SYSCALL = 0x80
SYSEXIT = 1
SYSWRITE = 4
SYSREAD = 3
EXIT = 0
STDOUT = 1
STDIN = 0
# (p/2 +np +a ) *p
.align 16
.data
	text: .asciz "Value: '%Lf'\n"
	two: .float 2.0
	n: .int 0
	k: .int 20
	kfloat: .float 20
	b: .float 25
	a: .float 5
	range: .float 0
	halfRange: .float 0
	currentValue: .float 0 #a+k/2
	functionValue: .float 0
	finalValue: .float 0
.bss
	.lcomm tmp, 4
	.lcomm tmp2, 4
.text
.global calkasse1
calkasse1:
	finit
	movss a, %xmm0				#1
	movss b, %xmm1 				#0
	subps %xmm0, %xmm1
	movss kfloat, %xmm2
	divps %xmm2, %xmm1
	movss %xmm1, range
	movss two, %xmm0
	divps %xmm0, %xmm1
	movss %xmm1, halfRange
	movss a, %xmm0
	addps %xmm1, %xmm0
	movss %xmm0, a
	mov $0, %edi	
loop:
	jmp value
cont:
	movss range, %xmm0
	mulps %xmm0, %xmm2
	movss finalValue, %xmm3
	addps %xmm2, %xmm3
	movss %xmm3, finalValue

	inc %edi
	cmp k, %edi
	jl loop
	jmp koniec
	

value:
	mov %edi, n
	filds n
	fstps tmp
	movss tmp, %xmm0
	movss range, %xmm1
	mulps %xmm0, %xmm1
	movss a, %xmm2
	addps %xmm1, %xmm2
	movss %xmm2, currentValue
function:
	mulps %xmm2, %xmm2
	movss two, %xmm0
	subps %xmm0, %xmm2
	movss %xmm2, functionValue
	jmp cont
		

koniec:
	flds finalValue
	
	ret
	
