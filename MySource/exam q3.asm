org 100h
.model small 
.stack 100h
.data 
.code
 main proc
    
 mov ah,1 
 int 21h   
 
 mov bl, al 
 add bl, al 
 add bl, al
 add bl, al 
 add bl, al 

  
 mov ah,1 
 int 21h  
 
 mov cl, al
 add cl, al 
 ;sub cl, al
 sub bl, cl
 
 mov ah,1      
 int 21h   
 
 mov cl, al 
 ;sub cl, al 
 sub bl, cl
 
sub bl,30h


 mov ah,02h
 mov dl,bl 
 int 21h   
 
 mov ah,4ch
 int 21h  
 

 
 main endp
 end main
 
 
  ret