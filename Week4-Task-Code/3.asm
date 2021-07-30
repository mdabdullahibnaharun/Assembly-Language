org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data


.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    print "Input : "
    
    mov ah,1
    int 21h    
           
    mov bl,al       
    
    printn 
    
    number:
    cmp bl,48
    jl others
    cmp bl,57
    jg capital
    jle number_print
    jmp exit

    
    number_print:
    printn "Number"
    jmp exit 
    
    capital: 
    cmp bl,65
    jl others
    cmp bl,90
    jg small
    jle capital_print
    jmp exit
   
    
    capital_print:
    printn "Capital" 
    jmp exit 
    
    small:
    cmp bl,97
    jl capital
    cmp bl,122
    jg others
    jle small_print 
    jmp exit
    
    small_print:
    printn "Small"
    jmp exit

    
    others:
    printn "Others"
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