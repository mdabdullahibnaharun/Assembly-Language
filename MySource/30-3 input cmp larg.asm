
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.data
    
    msg1 db 10,13,"Enter First Number : $"
    msg2 db 10,13,"Enter Second Number : $"
    msg3 db 10,13,"Enter Third Number : $" 
    
    num1 db ?
    num2 db ?
    num3 db ?
     

.code

main proc
     
     mov ax,@data
     mov ds,ax
     
     lea,dx,msg1
     mov ah,09
     int 21h
     
     mov ah,1
     int 21h  
     
     mov num1,al   
     
     
     lea,dx,msg2
     mov ah,09
     int 21h
     
     mov ah,1
     int 21h    
     
     mov num2,al
     
     
     lea,dx,msg3
     mov ah,09
     int 21h
     
     mov ah,1
     int 21h 
     
     mov num3,al    
     
     
     mov bl,num1
     cmp bl,num2 ;     jump not grater
     jng number2    
     
     cmp bl,num3
     
     number2:
     mov bl,num2
     cmp bl,num3
     jng number3
     
     number3:
     mov dl,num3
     
     
     display:
     mov ah,2
     int 21h
     
    
    
    main endp
end main

ret




