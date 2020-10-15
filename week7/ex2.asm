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
    move $s3, $s2 # save previous character
    lb $s2, ($s1)
    beq $s2, 0x20, plus_word
  plus_word_exit:
    beq $s2, $zero, exit
    addi $t1, $t1, 1 # i++
    j loop
  
  plus_word:
    beq $s2, $s3, plus_word_exit # skip multiple spaces
    addi $t0, $t0, 1
    j plus_word_exit
    
  # if there is space in the end we shouldn't count it
    beq $s3, 0x20, exit # if it is space we skip it
            # else we should add 1
    addi $t0, $t0, 1
    
  
  exit:  
    # print count of words
    li $v0, 1
    move $a0, $t0
    syscall
    
    # exit from a program
    li $v0, 10
    syscall
