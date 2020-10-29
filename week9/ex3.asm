.data
	a: .float 100000.0
.text
.globl main
main:
            li $t0, 0 # counter
            li $t1, 8 # iteration count
            l.s $f2, a 

Input_Loop:
            beq $t0, $t1, Print # if iterations complete - break loop
            addi $t0, $t0, 1 # increment counter
            li $v0, 6 
            syscall # read float number in $f0
	c.lt.s $f2, $f0  # compare current min with inputted number
	bc1t Input_Loop # if $f2 < $f0, next iteration
	mov.s $f2, $f0  # else 
	j Input_Loop  
	Print:
            mov.s $f12, $f2
            li $v0, 2              
            syscall

     	 li $v0, 10
     	 syscall

