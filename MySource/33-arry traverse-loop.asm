org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data 

;number1 db  0,1,2,3

;number2 db 10 DUB (?)

number3 db 10 DUB (0)

tst db 5,4,3 DUP (2 , 3 DUP (4) ); 54244424442444

number2 dw 65,66,67,68,69
number db 1,2,3,4,5,6,7,8,9,10 


.code

main proc 
    
    mov ax,@data
    mov ds,ax
    
    lea si,number
    
    mov cx,10 
    xor bx,bx
    mov ah,2 
    
    for:
        mov dl,number[bx] ;  
        add dl,48
        int 21h
        ;add si,1 
         add bx,1
        
        loop for  
              
     printn         
     mov cx,5
     xor bx,bx
     mov ah,2
        
     for2:
        mov dx,number2[bx] ;  
        xor dh,dh
        int 21h
        ;add si,1 
         add bx,2
        
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

