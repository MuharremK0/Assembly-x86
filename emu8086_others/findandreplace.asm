;Find and replace the relevant number

org 100h

lea bp,arr1
mov si,0
mov cl,n
loop1:
    mov al,[bp+si]
    cmp al,will_change
    je swap
    jmp not_swap
    swap:
        mov ah,new_num
        mov [bp+si],ah
    not_swap:
        inc si
    loop loop1


  
ret
arr1 db 4h,7h,11h,78h,14h,7h
n db 6
will_change db 4h
new_num db 33h


