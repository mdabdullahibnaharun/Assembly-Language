
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc 
    
    print " Hello World $"
                         
    printn                     
                          
    print " Bye World!! $"
    
    
     mov ah,4ch
     int 21h
        
    main endp
end main

ret