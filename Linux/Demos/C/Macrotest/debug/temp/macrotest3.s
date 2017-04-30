	.file	"macrotest3.c"
	.comm	radius,8,8
	.text
	.globl	circumference
	.type	circumference, @function
circumference:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	radius(%rip), %xmm1
	movsd	.LC0(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	circumference, .-circumference
	.globl	area
	.type	area, @function
area:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	radius(%rip), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	radius(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	area, .-area
	.section	.rodata
	.align 8
.LC2:
	.string	"Please input the radius of a circle:"
.LC3:
	.string	"%lf"
.LC4:
	.string	"[PI]=%lf  [radius]=%lf\n"
	.align 8
.LC5:
	.string	"The area of the circle is: %lf\n"
	.align 8
.LC6:
	.string	"The circumference of the circle is: %lf\n"
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
	movl	$.LC2, %edi
	call	puts
	movl	$radius, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$10, %edi
	call	putchar
	movsd	radius(%rip), %xmm0
	movabsq	$4614256656431372362, %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	movl	$.LC4, %edi
	movl	$2, %eax
	call	printf
	movl	$0, %eax
	call	area
	movl	$.LC5, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	call	circumference
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	1293080650
	.long	1075388923
	.align 8
.LC1:
	.long	1293080650
	.long	1074340347
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
