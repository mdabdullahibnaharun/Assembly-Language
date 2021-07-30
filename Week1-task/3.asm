.model small

.stack 100h

.data

.code


main proc
    
    ;input
    mov ah,01h
    int 21h
    
    
    mov bl,al
    
    sub bl,20h
    
    ;output
    mov dl,bl
    
    mov ah,02h
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main