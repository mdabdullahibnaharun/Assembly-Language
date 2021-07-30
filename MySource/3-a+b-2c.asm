.model small
.stack 100h
.data
.code

main proc
    
    ;3a+b-2c = 3.1+2-2-2*2 = 1
    
    mov ah, 01h
    int 21h
    mov bl,al ; al=1 bl=1 
    
        ;new line 
    mov ah, 02h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
      
    
    add bl,al
    add bl,al ; al=1, bl = 3 ] 3a
    
     
     
    mov ah, 01h
    int 21h      ;al = 2
    
    
    add bl, al ;bl = 3+2=5 al =2
     
     
        ;new line 
    mov ah, 02h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
      
    
    
    mov ah, 01h
    int 21h      ; al= 2cl = 2
    
    mov cl,al    ;cl = 2 al = 2
    add cl,al ;cl = 4 al =2
    
    
    sub bl,cl ;bl=1
    sub bl,30h  
    
    
        ;new line 
    mov ah, 02h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
      
    
    
    mov dl,bl
    mov ah , 02h
    int 21h
    
    
    
    ;new line 
    mov ah, 02h
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
      
    
end main  
mian endp