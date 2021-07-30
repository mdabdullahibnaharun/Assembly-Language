org 100h

include "emu8086.inc" 

.model small
.stack 100h
.data

fsp db 10,13,"     Fruit Shop    ",10,13,"---------------------$"
pgname db 10,13,"Product name : $"
apple db 10,13,"   1. Green Apple $"
watermelon db 10,13,"   2. Watermelon $"
orange db 10,13,"   3. Orange $"

.code

main proc
    
    mov ax,@data
    mov ds,ax 
      
      
      
    home: 
    mov ah,00
    mov al,02
    int 10h 
    

    
    mov ah,9h
    mov dx,offset fsp
    int 21h 
    
    mov ah,9h
    mov dx,offset pgname
    int 21h
    
    mov ah,9h
    mov dx,offset apple
    int 21h
    
    
    mov ah,9h
    mov dx,offset watermelon
    int 21h
    
    
    mov ah,9h
    mov dx,offset orange
    int 21h
    
    
    printn
    printn
    print "Press 1,2 or 3... "
    
    mov ah,1
    int 21h    
           
    mov bl,al       
    
    printn 
    printn
    
    
    cmp bl,49
    jl sorry
    cmp bl,51
    jg sorry
    jmp compare 
    
    
    sorry:
    mov ah,00
    mov al,02
    int 10h
    printn 
    printn
    printn "Sorry!!! Product is not available."
    printn   
    printn
    jmp home
    
    
    
    compare:
    cmp bl,49
    je apple_print
    cmp bl,50
    je watermelon_print
    cmp bl,51 
    je orange_print
    
    
    
    apple_print:
    mov ah,00
    mov al,02
    int 10h
     
    printn 
    printn
    printn "      Green Apple       " 
    printn "--------------------------"
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
    je thanks
    cmp bl,50
    je home
    jmp exit
    
    
    
    watermelon_print:
    mov ah,00
    mov al,02
    int 10h
    
    printn 
    printn
    printn "       Watermelon      " 
    printn "--------------------------"
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
    je thanks
    cmp bl,50
    je home
    jmp exit
    
    
    
    
    orange_print:
    mov ah,00
    mov al,02
    int 10h
    
    printn 
    printn
    printn "        Orange           " 
    printn "--------------------------"
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
    je thanks
    cmp bl,50
    je home
    jmp exit
    
    
    
    thanks:
    mov ah,00
    mov al,02
    int 10h
    printn 
    printn
    printn "Thank You For Your Order!!."
    printn 
    printn 
    jmp exit
    
    
      
    
    exit:
    mov ah,04ch
    int 21h
    
    
    main endp 
    
    
    DEFINE_SCAN_NUM ;cx
    DEFINE_PRINT_NUM   ;ax
    DEFINE_PRINT_NUM_UNS   ;ax
    DEFINE_PRINT_STRING       ;ds/si

end main   

ret

