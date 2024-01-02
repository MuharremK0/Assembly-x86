;Find max from array

;SI: It holds numbers step by step in array
;BH: It holds current max number in array 
;DL: It provides loop repeat with DH
;DH: It holds array size


org 100h

lea si,array1
mov dl,0
mov dh,n
cmp dl,dh
jge end

mov bx,0
mov bh,[si]
inc dl
inc si

loop1:
    cmp dl,dh
    jge end
    mov ah,[si]
    inc si
    inc dl
    cmp ah,bh
    jle loop1
    mov bh,ah
    jmp loop1
    
end:
    mov max_num,bh

ret
array1 db 7h,11h,20h,9h,8h
max_num db ?
n db 5



