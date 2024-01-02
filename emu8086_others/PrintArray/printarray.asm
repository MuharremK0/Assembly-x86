;Array Printing

org 100h

lea bp,arr1
mov cl,n
mov si,0

print_each:
mov al,[bp+si]
mov bl,10
div bl
add al,'0'
mov dh,ah
add dh,'0'
mov ah,2
mov dl,al
inc si
int 21h
mov dl,dh
int 21h

;Space
mov dl,' '
int 21h
;Reset
mov ah,0
mov al,0
loop print_each



ret
arr1 db 10,5,13,7,88,99,47
arraySize equ $ - arr1
n db 7

