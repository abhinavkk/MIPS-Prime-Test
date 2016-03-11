# GroupID-36 (14116013_14119003) - Amit Manchanda & Abhinav Kaushal Keshari
# Date: November 04, 2015
# Addition.asm - Primality test

.data
get_a_number:	.asciiz "\n\nEnter a number: "
ResultYes:	.asciiz "Congratulations! The number is prime."
ResultNo:	.asciiz "We are sorry to announce that the number is not prime."

# Registers Used: $a1=num; $s0=i; $s1=f; $s2=(num/2)+1;

.text

main:	
	li $v0, 4
	la $a0, get_a_number
	syscall
	li $v0, 5
	syscall
	move $a1, $v0
	
# Initialising registers
	move $s0, $zero
	addi $s0, $s0, 2
	move $s1, $zero
	div $s2, $a1, 2
	addi $s2, $s2, 1

	j loop


loop:
	slt $s3, $s0, $s2
	beq $s3, $zero, EndLoop
	div $a1, $s0
	mfhi $t0				# $t0 stores ($a1 % $s0)
	
	beq $t0, $zero, Assign
	addi $s0, $s0, 1

	j loop

Assign:
	addi $s1, $s1, 1

	j EndLoop

EndLoop:
	beq $s1, $zero, PrintYes
	
	li $v0, 4
	la $a0, ResultNo
	syscall

	j EndProgram	

PrintYes:
	li $v0, 4
	la $a0, ResultYes
	syscall	

	j EndProgram

EndProgram:
	li $v0, 10
	syscall