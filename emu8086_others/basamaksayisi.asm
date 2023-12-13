;Find number of Digits

org 100h


mov ax,num
mov bx,0
mov si,10

basamak_bul:
    cmp ax,0
    je finish
    div si
    mov dx,0
    inc bx
    jmp basamak_bul
    

finish:
    mov basamak,bx

ret
num dw 154854
basamak dw ?



