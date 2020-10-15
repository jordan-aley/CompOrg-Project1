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
