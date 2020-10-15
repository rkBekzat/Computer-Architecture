.data
	string: .space 255 # string variable

.text
	la $a0, string # address of string
	li $v0, 8 # take an input
	li $a1, 255 # maximum characters to read
	syscall 
	
	li $t0, 0 # count of words (spaces actually)
	li $t1, 0 # iterator
	la $s0, string
	
	loop:
		add $s1, $s0, $t1 # s1 = string[i]
		lb $s2, ($s1)
		beq $s2, 0x20, plus_word 
	plus_word_exit:
		beq $s2, $zero, exit
		addi $t1, $t1, 1 # i++
		j loop
	
	plus_word:
		addi $t0, $t0, 1
		j plus_word_exit
	
	exit:	
		# print count of words
		addi $t0, $t0, 1
		li $v0, 1
		move $a0, $t0
		syscall
		
		# exit from a program
		li $v0, 10
		syscall
