org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data 

.code

main proc 

    
    mov cx,0                   ; cx counter
                               
                               ; prepair to read
    mov ah,1
    int 21h                    ; input in al
    
                               ; char  == "\n" ?
        while:                 ; yes , exit
        cmp al, 0DH
        je exit                ; no increment cx 
        inc cx
        int 21h                ; read char
        jmp while
                               ; loop back

     exit:
      ;\n
     MOV AH, 2                    ; carriage return
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                  ; line feed
     INT 21H

     mov ax , cx                  ; output
     call print_num

     mov ah,4ch
     int 21h
        
    main endp

    DEFINE_SCAN_NUM ;cx
    DEFINE_PRINT_NUM   ;ax
    DEFINE_PRINT_NUM_UNS   ;ax
    DEFINE_PRINT_STRING       ;ds/si

end main

ret