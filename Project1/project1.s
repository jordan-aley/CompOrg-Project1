#let processor know we will be submitting data to program now
.data

insert_into:
    #make a 4 byte (32 bit) space in memory for a word with address insert_into
	.word 4

Ask_Input:
    #in unused memory store this string with address Ask_Input
	.asciiz "\Enter a string that is exactly 10 characters\n"

Low_Input:
    
    .asciiz "\Entered a string less than 10 characters, the program closed\n"

High_Input:
    .asciiz "\Entered a string greater than 10 characters, the program closed\n"

