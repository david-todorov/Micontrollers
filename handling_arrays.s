# Definition von symbolischen Konstanten ##########################


# DATA SECTION  ###############################################	
.data
arrayA:	.word 1, 2, 3, 4, 5, 6, 7, 8
arrayB:	.word 0, 0, 0, 0, 0, 0, 0, 0
# TEXT SECTION ###############################################
.global _start		
.text
_start:
	movi r8, 0
	movi r9, 42
	movi r10, 8
	
	movia r11, (arrayA)
	movia r12, (arrayB)
LOOP:
	bge r8, r10, ENDLOOP
	
	ldw r13, (r11) #load from arrayA
	
	ldw r14, (r12) #load from arrayB
	add r14, r13, r9 
	
	stw r14, (r12)
	
	addi r11, r11, 4
	addi r12, r12, 4
	
	addi r8, r8, 1
	br LOOP
ENDLOOP:


endloop:
	br endloop	
.end