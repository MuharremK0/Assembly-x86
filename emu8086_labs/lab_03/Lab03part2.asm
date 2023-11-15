
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,n
div 2
mov si,ax


mov ax,1
mov bx,1
mov cx,n
sub cx,1
;mov cx,si
;dec cx

   
loop1:
   mov ax,bx
   mul ax
   cmp ax,n
   je issquare
   inc bx
   loop loop1
   
    
int 20h
     
issquare:
    mov ah,2
    mov dl,'1'
    int 21h
ret
n dw 879




