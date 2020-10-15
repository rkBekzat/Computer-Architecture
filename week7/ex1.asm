.text
	# read integer
	li $v0, 5
	syscall
	move $s0, $v0 # save number value in $s0
	
	blt $s0, 0, less # less than zero
	bgt $s0, 0, greater # greater than zero
	
	zero:
		li $v0, 1
		li $a0, 0
		syscall
	 	j exit 
	
	less:
		li $v0, 1
		li $a0, -1
		syscall
		j exit
	
	greater:
		li $v0, 1
		li $a0, 1
		syscall 
		j exit
	
	exit:
		# exit from a program
		li $v0, 10
		syscall
