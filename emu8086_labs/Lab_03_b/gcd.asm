org 100h
   
mov ax,num1
mov bx,num2

cmp ax,bx
jae gcd_loop

mov ax,num2
mov bx,num1
   
gcd_loop:
    cmp bx,0
    jz gcd_finder
    div bx
    mov ax,bx
    mov bx,dx
    mov dx,0
    jmp gcd_loop
    
gcd_finder:
    mov gcd,ax

mov bp,gcd
mov cx,8
 
PRINT_LOOP:
    MOV AH,2
    MOV DL,'0'
    TEST BP,10000000b
    JZ PRINT_ZERO
    MOV DL,'1'
    PRINT_ZERO:
    INT 21h
    SHL BP,1
    LOOP PRINT_LOOP
mov dl,'b'
int 21h

ret
num1 dw 14
num2 dw 21
gcd dw 0



