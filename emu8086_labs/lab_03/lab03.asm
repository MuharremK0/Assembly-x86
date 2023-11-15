
;Prime Check

org 100h
         
MOV AX,0
MOV DX,0
MOV BX,N
SUB BX,1  
    

MOV CX,N

IS_PRIME: 
    CMP CX,2
    JE PRIME
    MOV AX,N
    DIV BX
    CMP DX,0
    JE  NOTPRIME
    MOV DX,0
    SUB BX,1
    LOOP IS_PRIME  


NOTPRIME:
    MOV AH,2
    MOV DL,'0'
    INT 21h
    JMP END
    
PRIME:
    MOV AH,2
    MOV DL,'1'
    INT 21h
    JMP END
    
END:
    INT 20h    

ret  

N DW 42




