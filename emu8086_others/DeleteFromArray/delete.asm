;Delete given number

org 100h

lea bp,array1
mov si,0
mov cx,n

special_cond:
    mov si,n
    dec si
    mov al,[bp+si]
    cmp al,find
    je end
    
mov si,0 

finding:
    mov al,[bp+si]
    cmp al,find
    je next
    inc si
    loop finding

jmp end
    
next:
    mov cx,n
    sub cx,si
    dec cx   
    swap:
        mov al,[bp+si+1]
        mov [bp+si],al
        inc si
        loop swap

end:    
    mov al,0
    mov [bp+si],al    


ret
array1 db 81h,65h,33h,21h,54h,48h
n dw 6
find db 48h

