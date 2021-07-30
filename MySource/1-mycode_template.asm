org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc 
    
    
    
    
     mov ah,4ch
     int 21h
        
    main endp
end main

ret