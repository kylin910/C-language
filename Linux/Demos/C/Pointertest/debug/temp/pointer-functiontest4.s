	.file	"pointer-functiontest4.c"
	.text
	.globl	get_big
	.type	get_big, @function
get_big:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	cmovge	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	get_big, .-get_big
	.globl	get_max
	.type	get_max, @function
get_max:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movl	%edx, %edi
	call	*%rax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %ecx
	movl	-4(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%ecx, %esi
	movl	%edx, %edi
	call	*%rax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	get_max, .-get_max
	.section	.rodata
.LC0:
	.string	"The MAX is %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$5, -16(%rbp)
	movl	$10, -12(%rbp)
	movl	$15, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %eax
	movl	$get_big, %ecx
	movl	%eax, %edi
	call	get_max
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
