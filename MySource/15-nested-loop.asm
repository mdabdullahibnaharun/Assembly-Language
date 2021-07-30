org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data  

N DB ?

.code

main proc 
    
    MOV AX,@DATA
    MOV DS,AX  
    
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV N,AL
    
    
    MOV BH,1     ;INT I = 1   
    
    PRINTN
    
    MOV AH,2
    MOV DL,'*'
    
    LOOP1:
        CMP BH,N
        JG LOOP1_EXIT
        MOV BL,1
        LOOP2:
            CMP BL,N ;BL,BH ^
            JG LOOP2_EXIT
            INT 21H
            INC BL
            JMP LOOP2
            
        LOOP2_EXIT:
        PRINTN
        INC BH
        JMP LOOP1
   
   LOOP1_EXIT:
       
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING


end main

ret

