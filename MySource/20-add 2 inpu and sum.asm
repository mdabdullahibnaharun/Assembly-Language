
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.data
.code 

main proc
        
    mov ah,1    ;4 input assci 52
    int 21h
             
    mov bl,al
    
    mov ah,1          ;3 input 51
    int 21h
    
    
    add bl,al         ;52+51 = 103 - 48 = 55 // a+3 = 7
    sub bl,48
                      ;ascci to num
            
     
    mov dl,bl          ;output
    mov ah,2
    int 21h
        
        
    
    main endp
end main

ret




