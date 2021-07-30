
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

main proc
    
    mov ah,02h
    mov cx,256 ;c=256
    mov dx,0
    
    int 21h
    
    
    label:
    
    int 21h
    
    inc dx
    dec cx   
    
    jnz label 
    
    
    
    label1:
    
    int 21h
    
    inc dx
    ;cx auto decrement   
    
    loop label     
     
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main

ret




