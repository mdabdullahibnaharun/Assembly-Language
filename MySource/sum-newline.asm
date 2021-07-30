.model small
.stack 100h
.data
.code

main proc 
    
    mov ah , 01h
    int 21h
    mov bl,al  
    
    
    ;new line 
    mov ah, 02h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    
    
    mov ah, 01h
    int 21h
    mov cl,al 
    
    ;new line 
    mov ah, 02h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    add bl,cl
    sub bl,30h 
    mov dl,bl
    
    
    mov ah, 02h
    int 21h
    
    
    
    main endp
end main