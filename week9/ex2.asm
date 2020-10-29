.text 
	li $v0, 5
	syscall
	move $t0, $v0
	li $t1, 0
	li $t3, 1
	add $t0, $t0, 1
	loop:
		sll $t3, $t3, 1 	
		add $t1, $t1, 1	
		bne $t1, $t0, loop
	li $v0, 1
	sub $t3, $t3, 2
	move $a0, $t3
	syscall
	  