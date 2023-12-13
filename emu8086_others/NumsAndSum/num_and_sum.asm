;Print numbers and sum up to given number

org 100h

mov bx,0
mov si,1

loop1:
    mov cx,16
    mov bp, si
    add bx, si
    loop_print: 
        mov ah,2
        mov dl,'0'
        test bp,1000000000000000b
        je printzero
        mov dl,'1'
        printzero:
            int 21h
            shl bp,1
            loop loop_print
     ;mov dl,20h  ;Space
     cmp si,n
     jae result
     mov dl,'+'
     int 21h
     inc si
     jmp loop1
     

result:
    mov cx,16
    mov dl,'='
    int 21h
    print2:
        mov ah,2
        mov dl,'0'
        test bx,1000000000000000b
        je printzero2
        mov dl,'1'
        printzero2:
            int 21h
            shl bx,1
            loop print2

ret
n dw 5




