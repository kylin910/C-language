	.file	"arraytest.c"
	.section	.rodata
.LC0:
	.string	"array a:"
.LC1:
	.string	"%5d"
.LC2:
	.string	"array b:"
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
	movl	$2, -76(%rbp)
	movl	$3, -72(%rbp)
	movl	$4, -68(%rbp)
	movl	$5, -64(%rbp)
	movl	$6, -60(%rbp)
	movl	$7, -56(%rbp)
	movl	$8, -52(%rbp)
	movl	$.LC0, %edi
	call	puts
	movl	$0, -88(%rbp)
	jmp	.L2
.L5:
	movl	$0, -84(%rbp)
	jmp	.L3
.L4:
	movl	-84(%rbp), %eax
	cltq
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-84(%rbp), %eax
	cltq
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	-80(%rbp,%rax,4), %eax
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	movl	-84(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rdx
	movl	%eax, -48(%rbp,%rdx,4)
	addl	$1, -84(%rbp)
.L3:
	cmpl	$3, -84(%rbp)
	jle	.L4
	movl	$10, %edi
	call	putchar
	addl	$1, -88(%rbp)
.L2:
	cmpl	$1, -88(%rbp)
	jle	.L5
	movl	$.LC2, %edi
	call	puts
	movl	$0, -88(%rbp)
	jmp	.L6
.L9:
	movl	$0, -84(%rbp)
	jmp	.L7
.L8:
	movl	-84(%rbp), %eax
	cltq
	movl	-88(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -84(%rbp)
.L7:
	cmpl	$1, -84(%rbp)
	jle	.L8
	movl	$10, %edi
	call	putchar
	addl	$1, -88(%rbp)
.L6:
	cmpl	$3, -88(%rbp)
	jle	.L9
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
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
