.align 32

.text

.global func
func:
	push %ebx
	mov 8(%esp), %edi
	
	
	cmp $49, %edi
	je one
	xor %eax, %eax
	cpuid
	rdtsc
one:
	rdtscp
	
	pop %ebx
	ret
	
