;Sorting array

org 100h

lea bp,array1
mov dl,0
mov dh,n
mov di,0h
cmp dl,dh
jge end

;Finding repeat num
mov bl,n
dec bl
mov cl,bl

loopf:
mov si,0h
 
loop1:
    cmp si,bx
    je next
    mov al,[bp+si]
    mov ah,[bp+si+1]
    cmp al,ah
    jg toggle
    jmp not_toggle
    toggle:
        mov [bp+si+1],al
        mov [bp+si],ah
    not_toggle:
        inc si
    jmp loop1
    next:
        dec bl
loop loopf

end:



ret
array1 db 33h,21h,7h,1h,3h,34h
temp dw ?
n db 5



