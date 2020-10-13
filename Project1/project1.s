.data #let processor know we will be submitting data to program now

insert_into:
	.word 4 #make a 4 byte (32 bit) space in memory for a word with address insert_into

Ask_Input:
	.asciiz "\Enter a string that is exactly 10 characters\n" #in unused memory store this string with address Ask_Input



