SYSCALL = 0x80
SYSEXIT = 1
SYSWRITE = 4
SYSREAD = 3
EXIT = 0
STDOUT = 1
STDIN = 0
# (p/2 +np +a ) *p
.align 32
.data
	text: .asciz "Value: '%Lf'\n"
	one: .int 1
	two: .int 2
	n: .int 0
	k: .int 5
	b: .int 25
	a: .float 5
	wynik: .double 0
	range: .float 0
	halfRange: .float 0
	currentValue: .float 0 #a+k/2
	functionValue: .float 0
	finalValue: .float 0
.text
.global main
main:
	finit
	flds a 				#1
	filds b 				#0
	fsub %st, %st(1)
	fxch %st(1)
	fidiv k
	fstps range				# (B-A)/k
	flds range
	fidiv two
	fstps halfRange
	fstp %st(0)

	flds a
	flds halfRange
	fadd %st(1), %st(0)
	fstps a
	fstp %st(0)
	mov $0, %edi	
loop:
	jmp value
cont:
	jmp function
cont1:
	flds functionValue
	fmul range
	flds finalValue
	fadd %st(0), %st(1)
	fxch %st(1)
	fstps finalValue
	fstp %st(0)
	inc %edi
	cmp k, %edi
	jl loop
	jmp koniec
	

value:
	mov %edi, n
	filds n
	flds range
	fxch %st(1)
	fmul %st(0), %st(1)
	fstp %st(0)
	flds a
	fadd %st, %st(1)
	fxch %st(1)
	fstps currentValue
	fstp %st(0)
	jmp cont
	

function:
	filds two
	flds currentValue			
	fmul %st(0), %st(0)
	fsub %st(0), %st(1)
	fxch %st(1)				
	fstps functionValue
	fstp %st(0)
	jmp cont1

koniec:
	flds finalValue
	
	mov $SYSEXIT, %eax
	mov $EXIT, %ebx
	int $SYSCALL
	
