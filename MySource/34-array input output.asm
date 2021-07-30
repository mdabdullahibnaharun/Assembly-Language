org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data
    
    number db 10 DUB (?)
    
    
.code

main proc 
    
    mov ax,@data
    mov ds,ax
    
    xor bx,bx
    mov cx,10
    
    mov ah,1
    
    for:
        int 21h
        mov number [bx],al
        inc bx
        loop for 
        
    xor bx,bx
    mov cx,10
    printn 
    mov ah,2
    
    for2:
        mov dl,number[bx]
        int 21h
        inc bx
        loop for2
    
    
    
    
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING


end main

ret