# Definition von symbolischen Konstanten ##########################


# DATA SECTION  ###############################################	
.data
sum:	.word 0
.macro	push reg
	subi	sp, sp, 4
	stw	\reg, 0(sp)
.endm

.macro	pop reg
	ldw \reg, 0(sp)
	addi sp, sp, 4
.endm

# TEXT SECTION ###############################################
.global _start		
.text
_start:
	movi r8, 10
	push r8
	call SUM_TO
	movia r9, sum
	stw r2, (r9)

endloop:
	br endloop

SUM_TO:
	pop r10
	movi r8, 0
	LOOP:
		bge r8, r10, END_LOOP
		add r2, r2, r8
		addi r8, r8, 1
		br LOOP
	END_LOOP:

ret


