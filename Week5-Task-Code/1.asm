org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

.code

main proc
    
    mov cx , 80      ; numb of strs to display
            
    mov ah , 2       ; display char function
        
    mov dl , '*'     ; char to display

    loop_strs: 
    
        int 21h      ; display a star
    
    loop loop_strs   ; repeat 80 times
    
    
    
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM ;cx
    DEFINE_PRINT_NUM   ;ax
    DEFINE_PRINT_NUM_UNS   ;ax
    DEFINE_PRINT_STRING       ;ds/si

end main

ret