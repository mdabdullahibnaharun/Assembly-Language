


org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data
      count db 0
.code

main proc 
    
    ;clr a reg. bx to stor data
    ;loop strt
    ;input 1/0
    ;chchk if its enter??
    ;if enters endlopp
    ;bx shl
    ;the input bx reg. lsb bit
     
     mov ax,@data
     mov ds,ax
     
     print " Take input : "
    
    mov bx,0
    
    mov ah,1
    for1:
        int 21h
        cmp al,0DH
        je end_for1 
        sub al,48
        shl bx,1
        or bl,al
        inc count
        jmp for1
        
    
    end_for1:
    printn 
    printn "output : "
    
    mov cl,16
    sub cl,count
    rcl bx,cl
    xor ch,ch ; ch = 0
    mov cl,count
    
    mov ah,2      
    
    for2:
        rcl bx,1
        jc output1  
        mov dl,'0' 
        int 21h
        jmp last_of_loop
        
        output1:
        mov dl,'1'
        int 21h
     
     last_of_loop:
     loop for2
     
     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING


end main

ret







