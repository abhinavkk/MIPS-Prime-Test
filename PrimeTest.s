	.file	"Prime.c"
	.section	.rodata
.LC0:
	.string	"Enter a number: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Congratulations! The number is prime."
	.align 8
.LC3:
	.string	"We are sorry to announce that the number is not prime."
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
	subq	$16, %rsp
	movl	$0, -8(%rbp)
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$2, -4(%rbp)
	jmp	.L2
.L5:
	movl	-12(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L3
	movl	$1, -8(%rbp)
	jmp	.L4
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	addl	$1, %eax
	cmpl	-4(%rbp), %eax
	jg	.L5
.L4:
	cmpl	$0, -8(%rbp)
	jne	.L6
	movl	$.LC2, %edi
	call	puts
	jmp	.L7
.L6:
	movl	$.LC3, %edi
	call	puts
.L7:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
