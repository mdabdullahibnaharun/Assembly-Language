


org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc 
    
    ;clr a reg. bx to stor data
    ;loop strt
    ;input 1/0
    ;chchk if its enter??
    ;if enters endlopp
    ;bx shl
    ;the input bx reg. lsb bit
    
    
    mov bx,0
    
    mov ah,1
    for1:
        int 21h
        cmp al,0DH
        je end_for1 
        sub al,48
        shl bx,1
        or bl,al
        jmp for1
        
    
    end_for1:
    printn
    mov ah,2
    mov dl,bl  
    add dl,48
    int 21h
    
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING


end main

ret





