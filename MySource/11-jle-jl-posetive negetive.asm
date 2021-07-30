
org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc
    
    mov bx,-10
    
    cmp bx,0
    jl if
    jge else
    
    if:
    printn "Number is (-)" 
    jmp endif
    
    else:
    printn "Number is (+)"
    jmp endif 
    
    
    
     endif:
     mov ah,4ch
     int 21h
        
    main endp
end main

ret