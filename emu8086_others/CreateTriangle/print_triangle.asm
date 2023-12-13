;Triangle

org 100h

mov bl,0

triangle:
    cmp bl,num
    je end
    inc bl
    mov cl,bl
    print:
        mov ah,2
        mov dl,'*'
        int 21h
        loop print
    mov dl,0Ah
    int 21h
    mov dl, [cr]
    int 21h
    jmp triangle
end:

ret
num db 10
cr   db 13            ; Carriage return character



