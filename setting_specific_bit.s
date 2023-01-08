# Definition of symbolic constants
	
# DATA SECTION
	.data
letter1:	.ascii "OK"
		.skip 1

# TEXT SECTION
	.global _start
	.text
_start:
	movia r8, letter1
LOOP:
	ldbu r9, (r8)
	beq r9, r0, OUT
	ori r9,r9, 16
	stb r9, (r8)
	addi r8,r8, 1
	br LOOP
OUT:

endloop:
	br endloop
	.end
