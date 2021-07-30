
org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

n db ?

.code

main proc
    
   mov cx,10 ; for(i=n=10;i>=0;i--)n=10
   
   top:
   printn "Loop is runing "
   loop top
   
   
   printn "Loop Ended" 
    
    
    
     mov ah,4ch
     int 21h
        
    main endp 
    

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING


end main

ret


