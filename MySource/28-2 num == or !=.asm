
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.data 

    msg1 db 10,13,"Enter First Number : $"
    msg2 db 10,13,"Enter Second Number : $"
    
    msg3 db 10,13,"Nuber are Equal..$"
    msg4 db 10,13,"Number are Not Equal...$"
    
.code

main proc
    
    mov ax,@data
    mov dx,ax
    
    mov dx,offset msg1
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h  
    
    mov cl,al
    
    
    mov dx,offset msg2
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h 
    
    mov dl,al  
    
    cmp dl,cl    ;6,6=0 jump equal zero    6-8=2
    je  equal 
       
       
    mov dx,offset msg4
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    
    
    equal:
        mov dx,offset msg3
        mov ah,9
        int 21h

    mov ah,4ch
    int 21h
     
    
    
    main endp
end main


ret




