.model small
.stack
.data                    ; $ ke fullstop bole
    var1 db "Hello$"
    var2 db "World$"
.code

main proc
    
    mov ax ,  @data
    mov dx , ax         
    
    lea dx , val1      ; load effectivee address
    
    mov ah, 09h ;strig output
    int 21h  
    
    
    


main endp
end main