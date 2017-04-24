	.file	"pointer-arraytest2.c"
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
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -80(%rbp)
	movl	$3, -76(%rbp)
	movl	$5, -72(%rbp)
	movl	$7, -68(%rbp)
	movl	$9, -64(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
	jmp	.L2
.L3:
	leaq	-80(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movl	-92(%rbp), %eax
	cltq
	movq	%rdx, -48(%rbp,%rax,8)
	addl	$1, -92(%rbp)
.L2:
	cmpl	$4, -92(%rbp)
	jle	.L3
	movl	$0, -92(%rbp)
	jmp	.L4
.L5:
	movl	-92(%rbp), %eax
	cltq
	movq	-48(%rbp,%rax,8), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -92(%rbp)
.L4:
	cmpl	$4, -92(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar
	movl	$0, -92(%rbp)
	jmp	.L6
.L7:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -92(%rbp)
	addq	$8, -88(%rbp)
.L6:
	cmpl	$4, -92(%rbp)
	jle	.L7
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
