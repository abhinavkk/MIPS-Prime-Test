# GroupID-36 (14116013_14119003) - Amit Manchanda & Abhinav Kaushal Keshari
# Date: November 04, 2015
# Addition.asm - Summation of two Enrollment numbers



.data
num1: .word 14116013                 
num2: .word 14119003                
result: .asciiz "The Sum of the two enrollment numbers is = "
     
 
.text
  main:
    lw $t1, num1($0)          
    lw $t2, num2($0)          

    add $s0, $t1, $t2

 
    li $v0, 4
    la $a0, result
    syscall


       
    addi $t5, $0, 1    
    move $v0, $t5
    move $a0, $s0
    syscall


    li $v0, 10
    syscall