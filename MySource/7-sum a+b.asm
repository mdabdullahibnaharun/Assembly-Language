
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data 

    a db ?
    b db ?

.code

main proc  
    
    mov ah,1
    int 21h
    
    mov a,al 
    sub a,48
    
    mov ah,1
    int 21h
    
    mov b,al 
    sub b,48
    
    mov bh,a
    add bh,b 
    add bh,48
    
             
             
             
    
    mov ah,2 
    
    ; new line
    mov dl,0AH
    int 21h
    mov dl, 0DH
    int 21h
    
    mov dl,bh
    int 21h
    
    
    
    
    mov ah,4ch        
    int 21h
        
    main endp
end main

ret




