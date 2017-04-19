	.file	"realnum_test.c"
	.section	.rodata
.LC2:
	.string	"a is %f\n"
.LC3:
	.string	"b is %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x7c,0x6
	subl	$20, %esp
	flds	.LC0
	fstps	-20(%ebp)
	fldl	.LC1
	fstpl	-16(%ebp)
	flds	-20(%ebp)
	subl	$4, %esp
	leal	-8(%esp), %esp
	fstpl	(%esp)
	pushl	$.LC2
	call	printf
	addl	$16, %esp
	subl	$4, %esp
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	pushl	$.LC3
	call	printf
	addl	$16, %esp
	movl	$0, %eax
	movl	-4(%ebp), %ecx
	.cfi_def_cfa 1, 0
	leave
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1202560114
	.align 8
.LC1:
	.long	1908874354
	.long	1107332749
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
