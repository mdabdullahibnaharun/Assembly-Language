org 100h

.model small
.stack 100h
.data

.code

main proc
    
    mov bl,53;5
    mov bh,55;7
    
    xchg bh,bl
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    
     mov ah,4ch
     int 21h
        
    main endp
end main

ret