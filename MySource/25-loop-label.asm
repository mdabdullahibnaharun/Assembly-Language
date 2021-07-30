
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
    
    mov cx,9 ; finish 10 times
    mov dx,57     ;asci of 9
         ;49 = 1 assci 0 strt 
         
    
    
    t1:
        mov ah,2
        int 21h
               
               
        ;add dx,1       
        ;inc dx   
        
        dec dx  
        
        
        
    loop t1
    
    
    
    mov ah,4ch
    int 21h
    
        
    
    main endp
end main


ret
