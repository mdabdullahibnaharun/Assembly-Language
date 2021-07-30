
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small   

.data  
    var1 db 7 
    var2 dw "Hello World$"
.code 

main proc
        
    
    mov ax,@data ;data access notation
    mov ds,ax ;all data address
    
    
    mov dl,var1
    add dl,48                    
             
    mov ah,2   ;for 1 char
    int 21h   
    
    
    ;---str
    
    mov dx, offset var2
    lea dx,var1 
    
    mov ah,9    ;for str
    int 21h 
    
    
    mov ah,4ch
    int 21h
    
        
    
    main endp
end main


ret
