.data 
	cf1: .float 5.4
	cf2: .float 12.3
	cf3: .float 18.23
	cf4: .float 8.23	

.text
	li $v0, 6
	syscall
	
	mov.s $f1, $f0
	
	li $v0, 6
	syscall
	
	# 5.4xy - 12.3y + 18.23x - 8.23
	mov.s $f2, $f0	# f2 = y 
	mul.s $f2, $f2, $f1  # f2 = x*y
 	l.s $f3, cf1
 	mul.s $f2, $f2, $f3  #f2 = 5.4 * x * y
	
	
	mov.s $f3, $f0 # f3 = y 
	l.s $f4, cf2
	mul.s $f3, $f4, $f3  #f3 = 12.3 * y  
	
	sub.s $f2, $f2, $f3  # f2 = 5.4xy - 12.3y
	
	mov.s $f3, $f1
	l.s $f4, cf3
	mul.s $f3, $f3, $f4  # f3 = 18.23*x
	
	add.s $f2, $f2, $f3
	l.s $f4, cf4
	sub.s $f2, $f2, $f4
	
	li $v0, 2
	mov.s $f12, $f2
	syscall
	li $v0, 10
	syscall	
	
	
	 
