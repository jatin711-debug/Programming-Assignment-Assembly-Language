
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include "emu8086.inc"
var1 dw ?
var2 dw ?
print 'Enter 1st Number'
gotoxy 0,1
call scan_num
mov bx,cx
mov var1,bx
gotoxy 0,2
print 'Enter 2nd Number'
gotoxy 0,3
call scan_num
mov dx,cx
mov var2,dx
gotoxy 0,4

call addition

call subtraction

call multiplication

ret

addition proc    
    add bx,dx
    mov ax,bx
    gotoxy 0,5
    print 'Value After Addition is: '
    call print_num
    ret   
addition endp

subtraction proc    
    mov bx,var1
    mov dx,var2
    sub bx,dx
    mov ax,bx
    gotoxy 0,6
    print 'Value After Subtraction is: '
    call print_num
    ret   
subtraction endp

multiplication proc
    mov ax,var1    
    mov bx,var2
    mul bx
    gotoxy 0,7
    print 'Value After Multiply is : '
    call print_num
    ret   
multiplication endp

define_scan_num
define_print_num
define_print_num_uns
ret




