
.model small 

.stack 100h    

.code

main proc 
           
    mov ah,01h
    int 21h
    
    mov bl,al
    add bl,al
    add bl,al
    
    mov ah,01h
    int 21h
    add bl,al
    
    mov ah,01h
    int 21h
    
    mov cl,bl
    add cl,bl
    
    sub bl,cl
    sub bl,30h
    mov dl,bl
    mov ah,02h
    int 21h 

    main endp    

end main   