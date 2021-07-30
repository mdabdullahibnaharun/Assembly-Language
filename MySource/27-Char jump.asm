.model small

.stack 100h

.data

.code

main proc
    
    label1:
    
    mov dl,'a'
    mov ah,2
    int 21h
    
    jmp label1
    
    main endp

end main