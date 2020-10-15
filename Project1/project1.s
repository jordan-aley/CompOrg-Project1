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

