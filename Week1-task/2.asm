.model small    

.stack 100h

.data

    str1 db "Enter First Number : $"
    str2 db "Enter Second Number : $"
    str3 db "Sum : $"

.code

main proc
    
    mov ax,@data
    mov ds,ax
     
    ;str1
    lea dx,str1
    mov ah,09h
    int 21h 
    
    ;num1
    mov ah,01h
    int 21h
    
    mov bl,al
    
    ;\n
    mov ah,02h
    mov dl, 0ah
    int 21h
    mov dl,0dh
    int 21h 
               
    ;str2           
    lea dx,str2
    mov ah,09h
    int 21h
    
    ;num2
    mov ah,01h
    int 21h   
    
    mov bh,al
    
    
    ;\n
    mov ah,02h
    mov dl, 0ah
    int 21h
    mov dl,0dh
    int 21h
    
    ;str3
    lea dx,str3
    mov ah,09h
    int 21h
    
    add bh,bl
    sub bh,48
    
    ;sum
    mov dl,bh
    
    mov ah,02h
    int 21h
    
    
    
    mov ah,4ch
    int 21h
    
    
    main endp

end main