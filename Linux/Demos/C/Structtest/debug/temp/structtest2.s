	.file	"structtest2.c"
	.section	.rodata
.LC1:
	.string	"%d,%s,%c,%d,%s\n"
	.text
	.globl	print_struct
	.type	print_struct, @function
print_struct:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	leaq	32(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	28(%rax), %ecx
	movq	-8(%rbp), %rax
	movzbl	24(%rax), %eax
	movsbl	%al, %edx
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rsi
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	%rdi, %r9
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	print_struct, .-print_struct
	.section	.rodata
.LC2:
	.string	"%d,%d,%d\n"
	.align 32
.LC0:
	.long	10000
	.string	"Zhang"
	.zero	14
	.byte	109
	.zero	3
	.long	21
	.string	"Shang Hai"
	.zero	20
	.zero	2
	.long	10001
	.string	"Li"
	.zero	17
	.byte	102
	.zero	3
	.long	20
	.string	"Bei Jing"
	.zero	21
	.zero	2
	.long	10002
	.string	"Liu"
	.zero	16
	.byte	109
	.zero	3
	.long	22
	.string	"Guang Dong"
	.zero	19
	.zero	2
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
	subq	$224, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-208(%rbp), %rax
	movl	$.LC0, %esi
	movl	$24, %edx
	movq	%rax, %rdi
	movq	%rdx, %rcx
	rep movsq
	movl	-52(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-180(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	leaq	-208(%rbp), %rax
	movq	%rax, -216(%rbp)
	jmp	.L3
.L4:
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	print_struct
	addq	$64, -216(%rbp)
.L3:
	leaq	-208(%rbp), %rax
	addq	$192, %rax
	cmpq	-216(%rbp), %rax
	ja	.L4
	movl	-52(%rbp), %ecx
	movl	-116(%rbp), %edx
	movl	-180(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L6
	call	__stack_chk_fail
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
