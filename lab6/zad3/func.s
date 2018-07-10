.align 32

.text

.global func
func:
	push %ebx
	mov 8(%esp), %edi
	
	
	
	xor %eax, %eax
	cpuid
	rdtsc
	
	pop %ebx
	ret
	
