# Definition von symbolischen Konstanten ##########################


# DATA SECTION  ###############################################	
.data
num1:	.word 100
sum:	.word 0
# TEXT SECTION ###############################################
.global _start		
.text
_start:
	movi r8, 0
	movi r9, 100
	
	movia r10, num1
	ldw r10, (r10)
	
	movia r11, sum

	
	movi r12, 100
IF:
	bge r10, r12, ELSE
LOOP:
	bge r8, r10, ENDLOOP
	
	ldw r12, (r11)
	add r12, r12, r8
	stw r12, (r11)
	
	addi r8, r8, 1
	br LOOP
ENDLOOP:
	br OUT

ELSE:
	ldw r12, (r11)
	movi r12, -1
	stw r12, (r11)
OUT:

endloop:
	br endloop				
.end