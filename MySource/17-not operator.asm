
org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc
    
    mov bh,11110011b
    not bh
    
    mov ah,2
    mov dl,bh
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