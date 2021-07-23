org 100h

include "emu8086.inc"
avg DW 50
print 'Enter Student Number'
gotoxy 0,1
call scan_num
gotoxy 0,2
cmp cx,avg
jge passMssg

print 'Student Had Failed'
ret

passMssg: 
print 'Student Had passed'

define_scan_num
ret



