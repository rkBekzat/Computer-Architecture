.data
msgY: .asciiz "Enter y: "
msgZ: .asciiz "Enter z: "
msgF: .asciiz "Enter f: "
msgQ: .asciiz "Enter q: "
result: .asciiz "x = "
.text

# Read Y
li $v0, 4
la $a0, msgY
syscall
li $v0, 5
syscall
# End read Y
move $t0, $v0 # move y to the first temporary register

# Read Z
li $v0, 4
la $a0, msgZ
syscall
li $v0, 5
syscall
# End read Z
move $t1, $v0 # move z to the second temporary register

# Read F
li $v0, 4
la $a0, msgF
syscall
li $v0, 5
syscall
# End read F
move $t2, $v0 # move f to the third temporary register

# Read Q
li $v0, 4
la $a0, msgQ
syscall
li $v0, 5
syscall
# End read Q
move $t3, $v0 # move q to the fourth temporary register

# Calculate z squared
mul $t1, $t1, $t1

# multiply y by z squared
mul $t0, $t0, $t1

# divide result by f
div $t2, $t0, $t2

# subtract q
sub $t3, $t2, $t3

# print message
li $v0, 4
la $a0, result
syscall

# print the result
li $v0, 1
move $a0, $t3
syscall

# exit program
li $v0, 10
syscall
# done
