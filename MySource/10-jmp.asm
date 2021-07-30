org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc
    
    mov cx,5;given
    mov bx,0;inintialize 
    
    start:
    cmp bx,cx  ;condition check
    je last 
    printn " Hello "
    inc bx
    jne start
    
    last:
    printn " This program is endes " 
    
    ;start:
    ;printn "here" 
    ;jmp start
    
    
     mov ah,4ch
     int 21h
                      
    main endp
end main

ret