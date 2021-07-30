
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

include 'emu8086.inc'

.model small
.stack 100h
.data
.code

main proc
    
mov dx,0
mov ah,1
int 21h

while_:
      cmp al,0Dh
      je end_while
      inc dx
      int 21h
      jmp while_ 
      

      
end_while: 
         mov ah,02h
         mov dl,0Ah
         int 21h
         mov dl,0Dh
         int 21h           
    mov ax,dx                      
    call print_num ;output 
    
    mov ah,4ch
    int 21h
      
      
    main endp

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING
    
    
end main

ret




