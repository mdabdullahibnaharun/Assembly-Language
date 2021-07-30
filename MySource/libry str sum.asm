org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data
        var1 db " sum : "
.code

main proc
    
    mov ax,@data
    mov ds,ax  
    
    call scan_num ;input in cx
    
    mov bx,cx
    
    printn
    
    call scan_num ;input in cx
    
    mov dx,cx
    
    printn
    
    add bx,dx 
    
    lea dx,var1
    call print_string
             
             
    mov ax,bx         
    call print_num 
    
    printn
    
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM ;cx
    DEFINE_PRINT_NUM   ;ax
    DEFINE_PRINT_NUM_UNS   ;ax
    DEFINE_PRINT_STRING       ;ds/si


end main

ret