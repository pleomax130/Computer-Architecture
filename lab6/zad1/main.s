	.file	"main.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
.LC0:
	.string	"1: %d 2: %d \n"
	.text
.globl main
	.type	main, @function
main:
.LFB0:
	.file 1 "main.c"
	.loc 1 5 0
	.cfi_startproc
	pushl	%ebp
.LCFI0:
	.cfi_def_cfa_offset 8
	movl	%esp, %ebp
	.cfi_offset 5, -8
.LCFI1:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	pushl	%ebx
	subl	$76, %esp
	.loc 1 8 0
	movl	$100000000, 48(%esp)
	.loc 1 9 0
	movl	48(%esp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	.cfi_escape 0x10,0x3,0x7,0x55,0x9,0xf0,0x1a,0x9,0xfc,0x22
	call	calloc
	movl	%eax, 44(%esp)
	.loc 1 11 0
	movl	$10000, 40(%esp)
	.loc 1 12 0
	movl	40(%esp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	calloc
	movl	%eax, 36(%esp)
	.loc 1 13 0
	movl	40(%esp), %eax
	movl	$4, 4(%esp)
	movl	%eax, (%esp)
	call	calloc
	movl	%eax, 32(%esp)
	.loc 1 16 0
	movl	$0, 28(%esp)
	jmp	.L2
.L3:
	.loc 1 17 0
	call	func
	movl	%eax, 60(%esp)
	.loc 1 18 0
	movl	28(%esp), %eax
	sall	$2, %eax
	addl	44(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 52(%esp)
	.loc 1 19 0
	call	func
	movl	%eax, 56(%esp)
	.loc 1 20 0
	movl	28(%esp), %eax
	sall	$2, %eax
	addl	36(%esp), %eax
	movl	60(%esp), %edx
	movl	56(%esp), %ecx
	movl	%ecx, %ebx
	subl	%edx, %ebx
	movl	%ebx, %edx
	movl	%edx, (%eax)
	.loc 1 21 0
	call	func
	movl	%eax, 60(%esp)
	.loc 1 22 0
	movl	28(%esp), %eax
	sall	$2, %eax
	addl	44(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 52(%esp)
	.loc 1 23 0
	call	func
	movl	%eax, 56(%esp)
	.loc 1 24 0
	movl	28(%esp), %eax
	sall	$2, %eax
	addl	32(%esp), %eax
	movl	60(%esp), %edx
	movl	56(%esp), %ecx
	movl	%ecx, %ebx
	subl	%edx, %ebx
	movl	%ebx, %edx
	movl	%edx, (%eax)
	.loc 1 16 0
	addl	$1, 28(%esp)
.L2:
	movl	28(%esp), %eax
	cmpl	40(%esp), %eax
	jl	.L3
	.loc 1 27 0
	movl	$0, 28(%esp)
	jmp	.L4
.L5:
	.loc 1 28 0
	movl	28(%esp), %eax
	sall	$2, %eax
	addl	32(%esp), %eax
	movl	(%eax), %ecx
	movl	28(%esp), %eax
	sall	$2, %eax
	addl	36(%esp), %eax
	movl	(%eax), %edx
	movl	$.LC0, %eax
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	printf
	.loc 1 27 0
	addl	$1, 28(%esp)
.L4:
	movl	28(%esp), %eax
	cmpl	40(%esp), %eax
	jl	.L5
	.loc 1 31 0
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	free
	.loc 1 32 0
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	free
	.loc 1 33 0
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	free
	.loc 1 35 0
	movl	$0, %eax
	.loc 1 36 0
	addl	$76, %esp
	popl	%ebx
	movl	%ebp, %esp
	popl	%ebp
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB0-.Ltext0
	.long	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LCFI0-.Ltext0
	.long	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LCFI1-.Ltext0
	.long	.LFE0-.Ltext0
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x114
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF15
	.byte	0x1
	.long	.LASF16
	.long	.LASF17
	.long	.Ltext0
	.long	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x5
	.long	0x4f
	.uleb128 0x6
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0x5
	.long	0x4f
	.long	.LFB0
	.long	.LFE0
	.long	.LLST0
	.long	0x111
	.uleb128 0x7
	.string	"l1"
	.byte	0x1
	.byte	0x6
	.long	0x4f
	.byte	0x2
	.byte	0x74
	.sleb128 60
	.uleb128 0x7
	.string	"l2"
	.byte	0x1
	.byte	0x6
	.long	0x4f
	.byte	0x2
	.byte	0x74
	.sleb128 56
	.uleb128 0x8
	.long	.LASF10
	.byte	0x1
	.byte	0x7
	.long	0x4f
	.byte	0x2
	.byte	0x74
	.sleb128 52
	.uleb128 0x8
	.long	.LASF11
	.byte	0x1
	.byte	0x8
	.long	0x75
	.byte	0x2
	.byte	0x74
	.sleb128 48
	.uleb128 0x7
	.string	"tab"
	.byte	0x1
	.byte	0x9
	.long	0x111
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0x8
	.long	.LASF12
	.byte	0x1
	.byte	0xb
	.long	0x4f
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.byte	0xc
	.long	0x111
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.byte	0xd
	.long	0x111
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x7
	.string	"i"
	.byte	0x1
	.byte	0xf
	.long	0x4f
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.long	0x4f
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x17
	.value	0x2
	.long	.Ldebug_info0
	.long	0x118
	.long	0x7a
	.string	"main"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.value	0x0
	.value	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF17:
	.string	"/home/susers/s226140/Pulpit/oiak/lab6/zad1"
.LASF18:
	.string	"main"
.LASF3:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF12:
	.string	"resultSize"
.LASF15:
	.string	"GNU C 4.4.3"
.LASF9:
	.string	"char"
.LASF16:
	.string	"main.c"
.LASF8:
	.string	"long int"
.LASF13:
	.string	"firstTime"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF11:
	.string	"size"
.LASF14:
	.string	"secondTime"
.LASF10:
	.string	"value"
.LASF5:
	.string	"short int"
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
