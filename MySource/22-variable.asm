
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small   

.data  
    var1 db 6
.code 

main proc
        
    mov dl,var1 
    add dl,48
    
    mov ah,2
    int 21h
    
    
    mov ah,4ch
    int 21h                          
    
    
        
    
    main endp
end main


ret
