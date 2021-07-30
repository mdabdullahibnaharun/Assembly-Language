org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data


.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    print "Enter Age : "
    call scan_num 
    mov bx,cx 
    
    
    
    printn 
    
    cmp bx,00d
    jl exit
    cmp bx,18d
    jg adult
    jle childprint

    
    childprint:
    printn "Child"
    jmp exit 
    
    adult: 
    cmp bx,40d
    jg oldprint
    jle adultprint
    jmp exit
   
    
    adultprint:
    printn "Adult" 
    jmp exit
    
    
    oldprint:
    printn "Old"
    jmp exit 
    
    exit:
    mov ah,04ch
    int 21h
    
    
    main endp

    DEFINE_SCAN_NUM ;cx
    DEFINE_PRINT_NUM   ;ax
    DEFINE_PRINT_NUM_UNS   ;ax
    DEFINE_PRINT_STRING       ;ds/si

end main

ret