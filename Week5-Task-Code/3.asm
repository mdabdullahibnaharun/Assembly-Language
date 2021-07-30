org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc
    
    inp:
                            ; input a char
    mov ah , 1
    int 21h
                            ; comp if input == " " then exit
    cmp  al, 20h
    je exit
                            ; output the current char
    mov ah , 2
    mov dl , al
    int 21h 
    
    jmp inp
          
          
     exit:
     
          
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM ;cx
    DEFINE_PRINT_NUM   ;ax
    DEFINE_PRINT_NUM_UNS   ;ax
    DEFINE_PRINT_STRING       ;ds/si

end main

ret