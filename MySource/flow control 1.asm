
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah,02h

mov cx,256
mov dx,0
        
      
;      label: 
      
;      int 21h
      
;     inc dx
      
;      dec cx
      
;      jnz label  
      
      label1: 
      
      int 21h
      
      inc dx
      
     loop label1
        
        
int 21h

ret




