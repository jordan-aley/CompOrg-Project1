.data
    #user input
    input: .space 11
    #makes new line
    newLine: .asciiz "\n"
    
.text

    main:
    li $v0, 8
    la $a0, input
    li $a1, 11
    syscall

    #loads the input from the user
    load_input:
    move $t3, $a0
    lb $s2, ($t3)

    #checks if input is equal to 10 characters
    check:
    beq $t0, 10, finish

    #iterates through the input
    loop:
    addi $t3,$t3, 1
    lb $s2, ($t3)
    j check

    #when input is 10 characters long finish
    finish:
    li $v0, 4
    la $a0, newLine
    syscall