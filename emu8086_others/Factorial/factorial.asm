;factorial

org 100h

mov ax,num
mov cx,num
dec cx
mov bx,num
dec bx

factorial:
    mul bx
    dec bx
    loop factorial
    
mov f,ax
    

ret
num dw 7
f dw ?



