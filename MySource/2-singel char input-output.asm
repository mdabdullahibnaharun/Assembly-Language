
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

include 'emu8086.inc' 


main proc  
    
    mov ah,01h
    int 21h
    
    mov bl,al
    
    
    mov dl,bl
    mov ah,02h
    int 21h
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main


ret




