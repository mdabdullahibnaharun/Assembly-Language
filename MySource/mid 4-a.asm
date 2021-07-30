org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data


.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    print "Enter a Number: "
    call scan_num 
    mov bx,cx 
    
    
    
    printn 
    
    cmp bx,03d
    jl notrange
    cmp bx,07d
    jg notrange
    jle inrange

    
    inrange:
    printn "Output: Within the range"
    jmp exit 
    
    
    notrange:
    printn "Output: Not in the range"
    jmp exit 
    
    exit:
    mov ah,04ch
    int 21h
    
    
    main endp

    DEFINE_SCAN_NUM 
     

end main

ret