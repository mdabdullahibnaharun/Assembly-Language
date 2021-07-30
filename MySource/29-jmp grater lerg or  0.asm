
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data  
    
    msg1 db 10,13,"Enter Number: $" 
    msg2 db 10,13,"Number is Positive$"
    msg3 db 10,13,"Number Is Negative$"
    msg4 db 10,13,"Number is Zero $"
    
.code

main proc
     
     
     mov ax,@data
     mov ds,ax 
     
     mov dx,offset msg1 ; Disply msg
     mov ah,9
     int 21h
     
        
     mov ah,1
     int 21h    
     mov bl,al
     mov cl,30h ; ascii code for < or >
     
     cmp bl,cl
     jg positive
     jl negative
     je zero
     
     
     positive:   
     lea dx,msg2
     mov ah,9
     int 21h 
     mov ah,4ch
     int 21h  
     
     negative:   
     lea dx,msg3
     mov ah,9
     int 21h 
     mov ah,4ch
     int 21h
     
     zero:   
     lea dx,msg4
     mov ah,9
     int 21h 
     mov ah,4ch
     int 21h
      
        
        
    main endp
end main

ret




