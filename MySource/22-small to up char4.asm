
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.data
.code 

main proc
        
    mov ah,1       ;input abc --->> assci       a =97 A=65 -- 97-65 = +-32
    int 21h
                                         
                                         
    mov dl,al
    add dl,32
    
    
    mov ah,2
    int 21h
            
    mov dl,al
    sub dl,32 
    
    
    mov ah,2        ;ouput interrupt
    int 21h
    
    mov ah,4ch
    int 21h       ;return 0                              
    
    
        
    
    main endp
end main


ret




