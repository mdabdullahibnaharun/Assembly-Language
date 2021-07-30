.model

.stack

.data

.code

    main proc
         
         mov ah, 01h   
         
         int 21h        
          
         mov bl,al      
          
           
         mov ah, 01h    
         
         int 21h        
         
         
         mov cl, al    
          
         
         sub bl,cl      
          
         add bl,30h
              
         mov dl,bl      
         
         
         mov ah , 02h   
         
         int 21h        
          
          
       
                    
    main endp

end main