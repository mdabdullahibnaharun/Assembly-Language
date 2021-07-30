include 'emu8086.inc'
.model small
.stack 100h
.data 
z dw ?
.code 

main proc
    
    ;EQN- z= 5x + 5y    
    ;x=2
    ;y=3
    ;output = 25
    
    mov ax,@data
    mov ds,ax

    call scan_num
    mov bx,cx ;x  
    
    add bx,cx
    add bx,cx
    add bx,cx
    add bx,cx  

    call scan_num 
    mov dx,cx ;y
      
    add dx,cx
    add dx,cx
    add dx,cx
    add dx,cx                     
    
    add z,dx
    add z,bx
    
    
    mov ax,z                        
    call print_num ;output
    
    mov ah,4ch
    int 21h
    
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING
    
end main
