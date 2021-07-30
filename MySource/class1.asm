.model small 

.stack

.data 

.code

  main proc
    
    mov ah, 01h ;singel int or charecter / digit
    int 21h ; input al regester *** fixt code for input 
    
    mov bl,al
    
    mov ah, 01h
    int 21h ; input in al resister
     
    mov cl, al   ;2nd input
    
    int 21h
    
    
    mov dl, bl       ;first output
    
    
    mov ah , 02h   ; singel char / digit 
    int 21h 
    
    
    mov dl,cl       ;2nd output
    
    mov ah, 02h
    int 21h          ;will show output of dl register
    
    
  main endp
end main