.data
string1: .asciiz "\n (a) Add \n (b)subtract \n (c) echo a sring \n (d) terminate \n choose a,b,c or d \n "
string2: .asciiz "enter the first number"
string3: .asciiz "enter the second number"
string4: .asciiz "the result is  "
string5: .asciiz "enter the string "

enteredString: .space 100
.text
addi $s2,$zero,97
addi $s5,$zero,98
addi $s6,$zero,99
addi $s7,$zero,100

choosingstatement: li $v0,4
la $a0, string1
syscall
li $v0 ,12
syscall
move $s1,$v0
bne  $s2,$s1, subtract
li $v0,4
la $a0, string2
syscall
li $v0,5
syscall
move $t0,$v0
li $v0,4

j choosingstatement
terminate: bne $s1,$s7, choosingstatement
li $v0,10
syscall