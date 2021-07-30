org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc
    
     ;push ax
     ;push bx
     
     ;pop cx
     ;pop dx
     
     print "Enter : " 
     
     mov ah,1
     
     xor cx,cx
     input:   
        int 21h
        cmp al,0DH
        je  exit_input
        push ax       
        inc cx
        jmp input
        
     exit_input:
         
     
     printn
     print "Output : "
     mov ah,2
     output:
         pop dx
         int 21h
     loop output
     

     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING


end main

ret