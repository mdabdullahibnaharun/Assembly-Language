include "emu8086.inc" 
 
.model small
.stack 100h
.data
 
fsp db 10,13,"     Fruit Shop   $ "
pgnm db 10,13,"Product name : $"
apl db 10,13,"   1. Green Apple $"
wtrmelon db 10,13,"   2. Watermelon $"
orng db 10,13,"   3. Orange $"
 
.code
 
main proc
    
    mov ax,@data
    mov ds,ax 
      
      
      
    homepg: 
    mov ah,00
    mov al,02
    int 10h 
    
    mov ah,9h
    lea dx,fsp
    int 21h  
    
    
    mov ah,9h
    lea dx, pgnm
    int 21h   
    
    
    mov ah,9h
    lea dx,apl
    int 21h 
    
    mov ah,9h
    lea dx, wtrmelon
    int 21h   
    
    mov ah,9h
    lea dx, orng
    int 21h
    
    printn
    printn
    print "Press 1,2 or 3... "
    printn
    
    mov ah,1
    int 21h    
           
    mov bl,al       
    
    printn 
    printn
    
    
    cmp bl,49
    jl sorrymsg
    cmp bl,51
    jg sorrymsg
    jmp cmpnum 
    
    
    sorrymsg:
    printn 
    printn
    printn "Sorry!!! Product is not available."
    jmp homepg
    
    
    
    cmpnum:
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
     
    printn
    printn "      Green Apple       " 
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
    je thankspg
    cmp bl,50
    je homepg
    jmp exit
    
    
    
    watermelonprint:
    mov ah,00
    mov al,02
    int 10h
    
    printn "       Watermelon      " 
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
    je thankspg
    cmp bl,50
    je homepg
    jmp exit
    
    
    
    
    orangeprint:
    mov ah,00
    mov al,02
    int 10h
    
    printn "        Orange           " 
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
    je thankspg
    cmp bl,50
    je homepg
    jmp exit
    
    
    
    thankspg:
    mov ah,00
    mov al,02
    int 10h
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
