.model

.stack

.data

.code

    main proc
         
         mov ah,01h   
         
         int 21h        
          
          
         mov bl,al
         
         sub bl,20h
         
         mov dl,bl
         
         mov ah,02h
         int 21h
         
         
         
         
         
         
         
         ;mov dl, al
         ;sub dl,32
         
         ;mov ah,2
         ;int 21h
         
         ;mov ah,4ch
         ;int 21h
         
   main endp
    
end main