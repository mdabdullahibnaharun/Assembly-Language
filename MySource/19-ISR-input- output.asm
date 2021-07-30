.model small

.stack 100h

.data

.code

main proc
        
    mov ah,1   ;1 use input
    int 21h          ;dos interrupt
    
    mov dl,al     ;cpy to dl
    
    mov ah,2     ;2 for output
    int 21h       ;dos interrupt       
    
    
    mov ah,4ch                  ;return 0
    int 21h   
        
        
    
    main endp
end main