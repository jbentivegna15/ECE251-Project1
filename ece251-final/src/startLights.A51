$NOMOD51

$include (SI_EFM8BB3_Defs.inc)            ; Include register definition file.

NAME STARTLIGHTS

EXTRN	CODE (?C_STARTUP)

ORG 300H
DELAY2: MOV	R4, #255 	;DELAY2 is a looped delay of 255*255 operations of decrementing registers
NEXT: MOV R5, #255
AGAIN: DJNZ R5, AGAIN
	DJNZ R4, NEXT
	RET

DELAY: MOV R6, #50 		;DELAY calls DELAY2 50 times
AGAIN2: LCALL DELAY2
	DJNZ R6, AGAIN2
	RET

setLightsRED:
	USING	0
	SETB  	P1_B4
	SETB 	P1_B5
	CLR  	P1_B6
	RET

setLightsYLW:
	USING	0
	CLR  	P1_B4
	SETB 	P1_B5
	CLR  	P1_B6
	RET

setLightsGRN:
	USING	0
	CLR  	P1_B4
	SETB 	P1_B5
	SETB 	P1_B6
	RET

setLightsOFF:
	USING	0
	SETB  	P1_B4
	SETB 	P1_B5
	SETB 	P1_B6
	RET

?PR?start?STARTLIGHTS               SEGMENT CODE
PUBLIC	start
RSEG  ?PR?start?STARTLIGHTS

start:
	LCALL setLightsRED
	LCALL DELAY
	LCALL setLightsOFF
	LCALL DELAY
	LCALL setLightsRED
	LCALL DELAY
	LCALL setLightsOFF
	LCALL DELAY
	LCALL setLightsYLW
	LCALL DELAY
	LCALL setLightsOFF
	LCALL DELAY
	LCALL setLightsGRN
	LCALL DELAY
	LCALL setLightsOFF
	LCALL DELAY
	RET

END
