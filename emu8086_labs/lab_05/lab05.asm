
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

#start=Emulation_Kit.exe#
	
    MOV DI,0
MAINLOOP:
    
    MOV DX,2000h	; first DOT MATRIX digit
    ADD DX,DI
    
    MOV BX, 0  

PRINT: 
     
	MOV SI, 0
	MOV CX, 5
    
    CMP DX, 2027H
    JLE NEXT
    MOV DX,2000H 
    
NEXT:
	MOV AL,Dots[BX][SI]
	out dx,al
	INC SI
	INC DX

	CMP SI, 5
	LOOPNE NEXT

	ADD BX, 5
	CMP BX, 40 
	JL PRINT 
	
	
	;WAIT 1 SEC
	MOV CX, 0FFH
    WAIT:
    LOOP WAIT

ADD DI,5 
CMP DI,35
JLE END
MOV DI,0
END:
JMP MAINLOOP
ret


Dots  DB  00000000B, 00000000B, 00000000B, 00000000B, 00000000B
    DB  00000000B, 00000000B, 00000000B, 00000000B, 00000000B
    DB  00000000B, 00000000B, 00000000B, 00000000B, 00000000B
    DB  00000000B, 00000000B, 00000000B, 00000000B, 00000000B
    DB	01111111b, 01001001b, 01001001b, 01001001b, 01000001b  ; E
    DB	01001111b, 01001001b, 01001001b, 01001001b, 01111001b  ; S
    DB	00000001b, 00000001b, 01111111b, 00000001b, 00000001b  ; T 
    DB	01111111b, 01000000b, 01000000b, 01000000b, 01111111b  ; U 
   
