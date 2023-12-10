;Lab04 exercise

org 100h

;Out of range
CMP N,14
JBE MES
CMP N,26
JAE MES

;Base conditions
MOV SI,1
MOV ARRAY[0],0
INC SI
MOV ARRAY[1],1

;Counter
SUB N,2
MOV CH,0
MOV CL,N

;Step by step calculating to N 
LOOP_1:
    INC SI
    MOV AX,SI
    MOV BL,2
    MOV DH,ARRAY[SI-2]
    MOV DL,ARRAY[SI-3]
    DIV BL
    CMP AH,0
    JE EVEN
    JMP ODD
    


EVEN:
    ADD DH,DL
    MOV ARRAY[SI-1],DH
    JMP LOOPEND 

ODD:
    SUB DH,DL
    MOV ARRAY[SI-1],DH
    JMP LOOPEND


LOOPEND:
    LOOP LOOP_1

;Printing F(N)

MOV BL,ARRAY[SI-1]
MOV CL,8   
PRINT_LOOP:
    MOV AH,2
    MOV DL,'0'
    TEST BL,10000000b
    JZ PRINT_ZERO
    MOV DL,'1'
    PRINT_ZERO:
    INT 21h
    SHL BL,1
    LOOP PRINT_LOOP
mov dl,'b'
int 21h    


ret 
;Printing an error message
MES:
    LEA SI, MESSAGE
    MOV CX, 38
    MOV AH, 0Eh
    GO: LODSB
        INT 10h
        LOOP GO

N DB 25
MESSAGE DB 'Please enter a value between 14 and 26', 0
ARRAY DB N DUP(0)
 

