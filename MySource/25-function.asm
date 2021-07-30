org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc
    
    call hello_world
    
    print "i am main function "
    
    
    
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING  
    
    hello_world proc
        
        printn "I am Function "
        printn "Hello World From Function "
        
        ret
        
    hello_world endp


end main

ret