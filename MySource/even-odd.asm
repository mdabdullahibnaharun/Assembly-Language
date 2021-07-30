
org 100h


main proc 
    
    mov ah,01h
    int 21h
    
    cmp al,31h
    je odd 
    
    cmp al,33h
    je odd 
    
    cmp al,32h
    je even 
    
    cmp al,34h
    je even
    
    jmp exit
    
    even:
    mov dl,'E'
    jmp output
    
    
    odd:
    mov dl,'O' 
    jmp output
    
    
    output:
    mov  ah,02h
    int 21h 

    
    exit:
    mov ah,4ch
    int 21h
    
    
    main endp
end main


ret




