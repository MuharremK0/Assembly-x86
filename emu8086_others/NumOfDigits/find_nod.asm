;Find number of Digits

org 100h


mov ax,num
mov bx,0
mov si,10

find_digit:
    cmp ax,0
    je finish
    div si
    mov dx,0
    inc bx
    jmp find_digit
    

finish:
    mov digit,bx

ret
num dw 154854
digit dw ?



