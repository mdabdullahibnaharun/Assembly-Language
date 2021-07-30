
; a number > 100 ? or >= 80 ? > 60 or >= 40 ? or>= 20
;or less then 20


org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc
    
    mov bx,80
    
    cmp bx,100      ;cmp >= 100
    jge if1
    
    cmp bx,80 
    jge if2


    cmp bx,60 
    jge if3


    cmp bx,40
    jge if4
             
    cmp bx,20       ;cmp >= 100
    jge if5
    
    jmp else
    
    if1:
    printn "The number is grater or equal 100 " 
    jmp end_if
    
    if2:
    printn "The number is grater or equal 80 " 
    jmp end_if
    
    if3:
    printn "The number is grater or equal 60 " 
    jmp end_if
    
    if4:
    printn "The number is grater or equal 40 " 
    jmp end_if
    
    if5:
    printn "The number is grater or equal 20 " 
    jmp end_if
    
    else:
    printn "The number is less then 20 " 
    jmp end_if
    
     end_if:
     mov ah,4ch
     int 21h
        
    main endp
end main

ret





