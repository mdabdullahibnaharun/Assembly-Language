
org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc  
    
    MOV BH,1111B
    AND BH,0100B
    MOV DL,BH
    ADD BH,48
    
    MOV AH,2
    PRINTN
    MOV DL,BH
    INT 21H  
    
    
    MOV BH,101B
    or BH,10B
    MOV DL,BH
    ADD BH,48
    
    MOV AH,2
    PRINTN
    MOV DL,BH
    INT 21H  
    
    
    MOV BH,101B
    xor BH,10B
    MOV DL,BH
    ADD BH,48
    
    MOV AH,2
    PRINTN
    MOV DL,BH
    INT 21H  
    
    
    MOV BH,101B
    not BH
    MOV DL,BH
    ADD BH,48
    
    MOV AH,2
    PRINTN
    MOV DL,BH
    INT 21H
    
    
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING


end main

ret


