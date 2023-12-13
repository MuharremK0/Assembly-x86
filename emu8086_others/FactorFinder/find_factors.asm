;Finding factors

org 100h

mov bx,1

find_factors:
    mov ah,0
    mov al,num
    div bl
    cmp ah,0
    jz print
    m: 
        cmp bl,num
        je finish
        inc bl
    jmp find_factors
        
    
    
finish:
    int 20h    
    

print:
    mov cx,8
    mov bp,bx
    PRINT_LOOP:
        MOV AH,2
        MOV DL,'0'
        TEST BP,10000000b
        JZ PRINT_ZERO
        MOV DL,'1'
        PRINT_ZERO:
        INT 21h
        SHL BP,1
        LOOP PRINT_LOOP
    mov dl, 20h
    int 21h
    jmp m   
    

ret
num db 25



