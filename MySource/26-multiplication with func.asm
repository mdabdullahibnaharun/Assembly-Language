org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc 
    
    
    call multiplication
    
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING 
    
     multiplication proc
        
        print " First number : "
        mov ah,1
        int 21h
        mov bl,al 
        sub bl,48
        
        printn
        
        print " Second Number : "
        int 21h
        mov cl,al 
        sub cl,48
        printn
        
        ;multi
        
        mov dl,0 ; to store sum
        
        for:
            cmp cl,0
            je end_for
            shr cl,1 
            
            jnc check
            add dl,bl
            
            check:
            shl bl,1
            jmp for
            
        end_for:
        ;output
         mov ah,2
         int 21h

        ret
        multiplication endp


end main

ret