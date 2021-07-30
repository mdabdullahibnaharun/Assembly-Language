.model small

.stack 100h

.data
    
    str1 db "HELLO $"
    str2 db "WORLD$"

.code

main proc
    
    
    mov ax,@data
    mov ds,ax
    
    ;str1
    lea dx,str1  
    mov ah,09h
    int 21h
    
    ;\n
    mov ah,02h
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    ;str2
    lea dx,str2
    mov ah,09h
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    
    main endp

end main