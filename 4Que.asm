
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
include 'emu8086.inc'
    
    call input    
    call output
ret
                  


input proc
mov ah,01          
    print 'Enter A Character'
    gotoxy 0,1
    int 21h    
ret
input endp

output proc
mov ah,0Eh
    cmp al,41h
    jge label1
    gotoxy 0,2
    print 'Enter A valid Number'
        
ret
output endp


label1:
cmp al,5Ah
jle label2
gotoxy 0,2
print 'Enter A valid Number'


label2:
add al,20h
    gotoxy 0,2
    int 10h
            
ret




          