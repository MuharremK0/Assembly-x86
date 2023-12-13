;Celcius to Fahrenheit Translation Program

org 100h

mov ax,celciues
mov bx,9
mul bx
mov bx,5
div bx
add ax,32

mov fahrenheit,ax


ret
celciues dw 25
fahrenheit dw ?




