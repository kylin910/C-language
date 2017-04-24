	.file	"pointer-functiontest2.c"
	.globl	name
	.section	.rodata
.LC0:
	.string	"Monday"
.LC1:
	.string	"Tuesday"
.LC2:
	.string	"Wednesday"
.LC3:
	.string	"Thursday"
.LC4:
	.string	"Friday"
.LC5:
	.string	"Saturday"
.LC6:
	.string	"Sunday"
	.data
	.align 32
	.type	name, @object
	.size	name, 56
name:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.globl	message
	.section	.rodata
.LC7:
	.string	"Wrong input"
	.data
	.align 8
	.type	message, @object
	.size	message, 8
message:
	.quad	.LC7
	.text
	.globl	week
	.type	week, @function
week:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	cmpl	$0, -4(%rbp)
	js	.L2
	cmpl	$7, -4(%rbp)
	jle	.L3
.L2:
	movq	message(%rip), %rax
	jmp	.L4
.L3:
	movl	-4(%rbp), %eax
	subl	$1, %eax
	cltq
	movq	name(,%rax,8), %rax
.L4:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	week, .-week
	.section	.rodata
.LC8:
	.string	"Input a number of a week:"
.LC9:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC8, %edi
	call	puts
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-20(%rbp), %eax
	movl	%eax, %edi
	call	week
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
