	.file	"recursion.c"
	.section	.rodata
.LC0:
	.string	"n<0,data error!"
	.text
	.globl	fac
	.type	fac, @function
fac:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jns	.L2
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movss	.LC1(%rip), %xmm0
	jmp	.L3
.L2:
	cmpl	$0, -20(%rbp)
	je	.L4
	cmpl	$1, -20(%rbp)
	jne	.L5
.L4:
	movss	.LC2(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L6
.L5:
	pxor	%xmm1, %xmm1
	cvtsi2ss	-20(%rbp), %xmm1
	movss	%xmm1, -24(%rbp)
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	call	fac
	mulss	-24(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
.L6:
	movss	-4(%rbp), %xmm0
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fac, .-fac
	.section	.rodata
.LC3:
	.string	"n!=%10.0f\n"
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
	subq	$16, %rsp
	movl	$10, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %edi
	call	fac
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC1:
	.long	3212836864
	.align 4
.LC2:
	.long	1065353216
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
