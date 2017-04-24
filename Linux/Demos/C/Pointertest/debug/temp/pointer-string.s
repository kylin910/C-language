	.file	"pointer-stringtest.c"
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
	subq	$112, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$2324737534391642444, %rax
	movq	%rax, -80(%rbp)
	movabsq	$30787916450984528, %rax
	movq	%rax, -72(%rbp)
	movl	$0, -100(%rbp)
	jmp	.L2
.L3:
	movl	-100(%rbp), %eax
	cltq
	leaq	-64(%rbp), %rdx
	addq	%rax, %rdx
	movl	-100(%rbp), %eax
	cltq
	leaq	-80(%rbp), %rcx
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	addl	$1, -100(%rbp)
.L2:
	movl	-100(%rbp), %eax
	cltq
	leaq	-80(%rbp), %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	-100(%rbp), %eax
	cltq
	leaq	-64(%rbp), %rdx
	addq	%rdx, %rax
	movb	$0, (%rax)
	leaq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.L4
.L5:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	addq	$1, -96(%rbp)
	addq	$1, -88(%rbp)
.L4:
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L5
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	puts
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
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
