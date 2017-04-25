	.file	"structtest1.c"
	.section	.rodata
.LC0:
	.string	"%d,%s,%c,%d,%s\n"
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
	subq	$224, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-208(%rbp), %rdx
	movl	$0, %eax
	movl	$24, %ecx
	movq	%rdx, %rdi
	rep stosq
	movl	$10000, -208(%rbp)
	movabsq	$444233508954, %rax
	movq	%rax, -204(%rbp)
	movq	$0, -196(%rbp)
	movl	$0, -188(%rbp)
	movb	$109, -184(%rbp)
	movl	$21, -180(%rbp)
	movabsq	$7009888448607774803, %rax
	movq	%rax, -176(%rbp)
	movq	$105, -168(%rbp)
	movq	$0, -160(%rbp)
	movl	$0, -152(%rbp)
	movw	$0, -148(%rbp)
	movl	$10001, -144(%rbp)
	movq	$26956, -140(%rbp)
	movq	$0, -132(%rbp)
	movl	$0, -124(%rbp)
	movb	$102, -120(%rbp)
	movl	$20, -116(%rbp)
	movabsq	$7453010200437024066, %rax
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -88(%rbp)
	movw	$0, -84(%rbp)
	movl	$10002, -80(%rbp)
	movb	$109, -56(%rbp)
	movl	$22, -52(%rbp)
	leaq	-208(%rbp), %rax
	addq	$132, %rax
	movl	$7694668, (%rax)
	leaq	-208(%rbp), %rax
	addq	$160, %rax
	movabsq	$8017568865231926599, %rcx
	movq	%rcx, (%rax)
	movw	$26478, 8(%rax)
	movb	$0, 10(%rax)
	movl	$0, -212(%rbp)
	jmp	.L2
.L3:
	leaq	-208(%rbp), %rax
	movl	-212(%rbp), %edx
	movslq	%edx, %rdx
	salq	$6, %rdx
	addq	$32, %rdx
	leaq	(%rax,%rdx), %rdi
	movl	-212(%rbp), %eax
	cltq
	salq	$6, %rax
	addq	%rbp, %rax
	subq	$180, %rax
	movl	(%rax), %ecx
	movl	-212(%rbp), %eax
	cltq
	salq	$6, %rax
	addq	%rbp, %rax
	subq	$184, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	-208(%rbp), %rax
	movl	-212(%rbp), %esi
	movslq	%esi, %rsi
	salq	$6, %rsi
	addq	%rsi, %rax
	leaq	4(%rax), %rsi
	movl	-212(%rbp), %eax
	cltq
	salq	$6, %rax
	addq	%rbp, %rax
	subq	$208, %rax
	movl	(%rax), %eax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -212(%rbp)
.L2:
	cmpl	$2, -212(%rbp)
	jle	.L3
	movl	$0, %eax
	movq	-8(%rbp), %rdi
	xorq	%fs:40, %rdi
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
