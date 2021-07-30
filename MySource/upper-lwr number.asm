
org 100h  

.model small

.stack 100h

.data 
    
    var1 db "Number$"
    var2 db "UpperCase$"
    var3 db "lowerCase" 
    var4 db "Others$"

.code

main proc  
    
    mov ax,@data
    mov ds, ax
    
    mov ah,01h
    int 21h
           
    mov bl,al
    
    cmp bl,30h 
    jl end_if
    cmp bl,39h 
    jle numberprint
    jg uppercase  
    jmp exit
    
    
    uppercase: 
    
    cmp bl,41h
    jl end_if
    cmp bl,5Ah 
    jle upperprint
    jg  lowercase 

    
    
    end_if:
    
    lea dx,var4
    mov ah,09h
    int 21h  
    
    upperprint:
    
    lea dx,var2
    mov ah,09h
    int 21h
    
    
    lowerprint:
    
    lea dx,var3
    mov ah,09h
    int 21h   
    
    numberprint:
    
    lea dx,var1
    mov ah,09h
    int 21h
    
    
    
    exit:
    
    mov ah,4ch
    int 21h
    
         
         
main endp

end main
         
ret



