.data
msg: .asciiz "\n10 first Fibonacci numbers: "
separator: .asciiz ", "
.text

.globl main
main:

# We will store last fibonacci number in $t0 and the current one in $t1

# output initial message
li $v0, 4
la $a0, msg
syscall

# first numbers:
li $t0 1
li $t1 1
li $t3 0

# we cam also store iterations count in $t3
iter:

# output "last" number 
li $v0, 1
move $a0, $t0
syscall

# increment iteration count
add $t3, $t3, 1

add $t2, $t0, $t1 # calculate next fibonacci number

# update registers
move $t0, $t1
move $t1, $t2 

beq $t3, 10, exit # exit loop if 10 iteration are performed

# output separator
li $v0, 4
la $a0, separator
syscall

# another iteration
j iter

exit:
li $v0 10
syscall # exit program

# Done!
