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

    #create jump points for upper and lowercase letters and numbers
    sort:
    addi $t0, $t0, 1
    bge $s2, 97, lowerCase
    bge $s2, 65, upperCase
    bge $s2, 48, number

    #iterates through the input
    loop:
    addi $t3,$t3, 1
    lb $s2, ($t3)
    j check

    #all eligable lowercase letters
    lowerCase:
    bge $s2, 119 iterator
    sub $s2, $s2, 87
    add $s3, $s3, $s2
    j loop

    #all eligable uppercase letters
    upperCase:
    bge $s2, 87 iterator
    sub $s2, $s2, 55
    add $s3, $s3, $s2
    j loop

    #all numbers
    number:
    bge $s2, 58 iterator
    sub $s2, $s2, 48
    add $s3, $s3, $s2
    j loop

    #when input is 10 characters long finish
    finish:
    li $v0, 4
    la $a0, newLine
    syscall