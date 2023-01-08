# Definition of symbolic constants
	
# DATA SECTION
	.data
num1:		.word 0x12345678
num2:		.word 0x20000000
result:		.word 0x00000000
# TEXT SECTION
	.global _start
	.text
_start:
	movia r8, num1
	ldw r8, (r8)
	movia r9, num2
	ldw r9, (r9)
	
	add r10, r8, r9
	
	movia r8, result
	ldw r10, (r8)
	


endloop:
	br endloop
	.end
