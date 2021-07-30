
org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc 
    
    mov bx,0
    mov cl,4
        
        print "Enter Hex number : "
        
    mov ah,1
    for1:
        int 21h
        cmp al,0DH
        je end_for
        
        cmp al,41h
        jge letter
        
        
        
        ;digit
        sub al,48
        jmp shift
        
        
        letter:
            sub al,37h
            
        shift:
            shl bx,cl ; new space to store
            or bl,al
            
    jmp for1
    
    printn
    end_for:
    
    mov ah,2
    mov dl,bl
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