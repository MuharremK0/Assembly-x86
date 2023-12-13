;Factoriel

org 100h

mov ax,num
mov cx,num
dec cx
mov bx,num
dec bx

Factoirel:
    mul bx
    dec bx
    loop Factoirel
    
mov f,ax
    

ret
num dw 7
f dw ?



