	.file	"pointer-arraytest.c"
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
	movq	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L2
.L3:
	movl	-60(%rbp), %eax
	cltq
	movl	-60(%rbp), %edx
	movl	%edx, -48(%rbp,%rax,4)
	addl	$1, -60(%rbp)
.L2:
	cmpl	$9, -60(%rbp)
	jle	.L3
	movl	$0, -60(%rbp)
	jmp	.L4
.L5:
	movl	-60(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -60(%rbp)
.L4:
	cmpl	$9, -60(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar
	movl	$0, -60(%rbp)
	jmp	.L6
.L7:
	movl	-60(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -60(%rbp)
.L6:
	cmpl	$9, -60(%rbp)
	jle	.L7
	movl	$10, %edi
	call	putchar
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.L8
.L9:
	movq	-56(%rbp), %rax
	leaq	4(%rax), %rdx
	movq	%rdx, -56(%rbp)
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
.L8:
	leaq	-48(%rbp), %rax
	addq	$40, %rax
	cmpq	-56(%rbp), %rax
	ja	.L9
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L11
	call	__stack_chk_fail
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
