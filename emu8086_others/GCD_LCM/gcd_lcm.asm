;GCD-LCM

org 100h

MOV AX,N1
MOV BX,N2

CMP AX,BX
JAE GCD_FINDER

MOV AX,N2
MOV BX,N1

GCD_FINDER:
    CMP BX,0
    JE RESULT_GCD
    DIV BX
    MOV AX,BX
    MOV BX,DX
    MOV DX,0
    JMP GCD_FINDER
    
    
RESULT_GCD:
    MOV GCD,AX

RESULT_LCM:
    MOV AX,N1
    MOV BX,N2
    MUL BX
    DIV GCD
    MOV LCM,AX


ret
N1 DW 8
N2 DW 26
GCD DW 0
LCM DW 0



