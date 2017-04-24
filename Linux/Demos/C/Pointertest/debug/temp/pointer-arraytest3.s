	.file	"pointer-arraytest3.c"
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$5, -40(%rbp)
	movl	$7, -36(%rbp)
	movl	$9, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$4, -24(%rbp)
	movl	$6, -20(%rbp)
	movl	$8, -16(%rbp)
	movl	$10, -12(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L2
.L3:
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -60(%rbp)
.L2:
	cmpl	$4, -60(%rbp)
	jle	.L3
	movl	$10, %edi
	call	putchar
	addq	$20, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L4
.L5:
	movq	-56(%rbp), %rax
	movl	-60(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -60(%rbp)
.L4:
	cmpl	$4, -60(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
