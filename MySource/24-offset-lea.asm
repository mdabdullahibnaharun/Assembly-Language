
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small   

.data  
    var1 db "--Hello-- $" 
    var2 dw "--World--$"
.code 

main proc
        
    
    mov ax,@data
    mov ds,ax
    
    mov dx,offset var1
   
    mov ah,9
    int 21h  
    
    lea dx,var2
    
    mov ah,9
    int 21h
    
    
    mov ah,4ch
    int 21h
    
        
    
    main endp
end main


ret
