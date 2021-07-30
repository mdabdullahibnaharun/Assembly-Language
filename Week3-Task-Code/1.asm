include 'emu8086.inc'

.model small

.stack 100h

.data

.code 

main proc
    
    ;EQN- 3a+b-2c       
    ;a=2
    ;b=3
    ;c=1
    ;output = 7
    
    
    call scan_num
    mov bx,cx 

    add bx,cx ;2a
    add bx,cx ;3a  
     
     ;\n
     MOV AH, 2                    ; carriage return
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                  ; line feed
     INT 21H
    
    call scan_num 
    mov dx,cx ;b

    add bx,dx ;bx = 3a+b / bx+dx   
     
     ;\n
     MOV AH, 2                    ; carriage return
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                  ; line feed
     INT 21H
    
    
    call scan_num  
    mov dx,cx ;c   

    add dx,cx ;2c 

    sub bx,dx ;3a+b-2c / bx-dx  
     
     ;\n
     MOV AH, 2                    ; carriage return
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                  ; line feed
     INT 21H
                          
    mov ax,bx                      
    call print_num ;output

    mov ah,4ch
    int 21h
    
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING
    
    
end main