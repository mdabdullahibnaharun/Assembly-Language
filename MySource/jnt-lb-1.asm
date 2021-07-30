org 100h
include "emu8086.inc" 
.model small
.stack 100h
.data
fsa db 10,13," Fruit Shop $"
pgnam db 10,13,"Product name : $"
appl db 10,13," 1. Green Apple $"
watermeln db 10,13," 2. Watermelon $"
orang db 10,13," 3. Orange $"
.code
main proc
 
 mov ax,@data
 mov ds,ax 
 
 
 
 home: 
 mov ah,00
 mov al,02
 int 10h 
 
 
 mov ah,9h
 mov dx,offset fsa
 int 21h 
 
 mov ah,9h
 mov dx,offset pgnam
 int 21h
 
 mov ah,9h
 mov dx,offset appl
 int 21h
 
  
 mov ah,9h
 mov dx,offset watermeln
 int 21h
 
 
 mov ah,9h
 mov dx,offset orang
 int 21h
 
 
 
 printn
 print "Press 1,2 or 3... "
 
 mov ah,1
 int 21h 
 
 mov bl,al 
 
 
 printn
 
 
 cmp bl,49
 jl sry
 cmp bl,51
 jg sry
 jmp cmpr 
 
 
 sry:
 printn
 printn "Sorry!!! Product is not available."
 jmp exit
 
 
 
 cmpr:
 cmp bl,49
 je appleprint 
 cmp bl,50
 je watermelonprint
 cmp bl,51 
 je orangeprint
 
 
 
 appleprint:
 mov ah,00
 mov al,02
 int 10h
 

 printn " Green Apple " 
 printn 
 printn "Date Arrival: 10/12/2019"
 printn "Expire Date: 10/06/2020"
 printn "Selling Price: 120"
 printn "Price Unit: 1" 
 printn
 printn "Press 1 to Order"
 printn "Press 2 for Home" 
 printn "Press any key for exit." 
 
 mov ah,1
 int 21h 
 
 mov bl,al
 
 cmp bl,49
 je tnx
 cmp bl,50
 je home
 jmp exit
 
 
 
 watermelonprint:
 mov ah,00
 mov al,02
 int 10h
 
 printn " Watermelon "  
 printn 
 printn "Date Arrival: 10/12/2019"
 printn "Expire Date: 10/06/2020"
 printn "Selling Price: 120"
 printn "Price Unit: 1" 
 printn
 printn "Press 1 to Order"
 printn "Press 2 for Home" 
 printn "Press any key for exit." 
 
 mov ah,1
 int 21h 
 
 mov bl,al
 
 cmp bl,49
 je tnx
 cmp bl,50
 je home
 jmp exit
 
 
 
 
 orangeprint:
 mov ah,00
 mov al,02
 int 10h
 

 printn " Orange " 
 printn 
 printn "Date Arrival: 10/12/2019"
 printn "Expire Date: 10/06/2020"
 printn "Selling Price: 120"
 printn "Price Unit: 1" 
 printn
 printn "Press 1 to Order"
 printn "Press 2 for Home" 
 printn "Press any key for exit." 
 
 mov ah,1
 int 21h 
 
 mov bl,al 

 cmp bl,49
 je tnx
 cmp bl,50
 je home
 jmp exit
 
 
 
 tnx:
 printn 
 printn
 printn "Thank You For Your Order!!."
 jmp exit
 
 
 
 
 exit:
 mov ah,04ch 
 
 int 21h
 
 
 main endp 
 

end main 
ret