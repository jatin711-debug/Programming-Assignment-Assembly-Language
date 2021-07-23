org 100h  
include 'emu8086.inc'
  
mov ax,0xB800
mov bx,0000h
mov dh,11100000b
mov dl,41h
mov ds,ax
mov cx,6
loop struct


struct:      
    mov [bx],dx
    add dl,1h
    add bx,0002h 
    loop struct
ret



