
.model small 

.stack 100h    

.code

main proc 
    
    mov ah,1 
    
    int 21h
    
    mov bl,al  
    
    mov ah,02h
                                         
    mov ah,1 
    
    int 21h 
    mov ah,02h 
    
 
    
    mov bh,al 
    mov ah,02h 
    
    mov cl,al 
    mov ah,02h
    mov dl,0Ah
    int 21h
    mov dl,0Dh
    int 21h  
    mov ah,2 
    
    
    mov dl,bl 
    int 21h
             
             

    mov ah,2 
    
    mov dl,bh
    int 21h
    
 
    
    mov ah,4ch
    int 21h
    
main endp    
end main                                                              