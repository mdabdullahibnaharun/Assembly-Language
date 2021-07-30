
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h 
.data
    
    num db 49 ; s=100
    char db 'A'
    msg db "My name is emu8086$"  

.code
main proc
    
    mov ax,@data
    mov ds,ax  
    
    
    mov ah,2
    mov dl,num
    int 21h   
    
    
    ;new line
    mov ah,2
    mov dl,0AH
    int 21h   
    mov dl,0DH
    int 21h
    
    
              
    mov ah,2
    mov dl,char
    int 21h 
    
    
    ;new line
    mov ah,2
    mov dl,0AH
    int 21h   
    mov dl,0DH
    int 21h
    
    
    mov ah,09
    lea dx,msg
    int 21h
    
    
     
    
    mov ah,4ch
    int 21h

    main endp
end main


ret




