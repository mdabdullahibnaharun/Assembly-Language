org 100h 
include "emu8086.inc" 
.model small
.stack 100h
.data
.code
main proc
 
 mov ax,@data
 mov ds,ax
 
 print "Enter Number : " 
 
 mov ah,1 ;input in al register
 int 21h 
 
 printn
 
 mov bl,2
 div bl ; remainder will store in ah
 cmp ah,0
 je E 
 printn "o"
 jmp exit
 
 E:
 print "e" 
 jmp exit
 
 
 exit:
 mov ah,4ch
 int 21h
 
 

main endp
 DEFINE_SCAN_NUM ;cx
 DEFINE_PRINT_NUM ;ax
 DEFINE_PRINT_NUM_UNS ;ax
 DEFINE_PRINT_STRING ;ds/si
end main  
ret