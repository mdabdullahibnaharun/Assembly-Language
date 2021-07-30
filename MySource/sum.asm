.model

.stack

.data

.code

main proc
         
         mov ah, 01h    ; single character input
         
         int 21h        ; input in AL register  
         
          
         mov bl,al      ;1st input
          
           
         mov ah, 01h    ; single character input
         
         int 21h        ; input in AL register
         
         
         mov cl, al     ; 2nd input
          
          
         ;add bl ,cl    ; first register a addition store 
         
         ;sub bl,30h
          
         
         add bl,cl      ;moving data
          
         add bl,30h
              
         mov dl,bl      ; 1st output
         
         
         mov ah , 02h   ; single character/digit output 
         
         int 21h        ; will show value  of DL register
          
          
                   
          
         ; mov dl,cl    ; 2nd output
         
         ;int 21h       ; will show output of DL register
                    
main endp

end main