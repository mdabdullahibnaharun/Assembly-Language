
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h 
.data
    
    num db 'd' ; s=100
    num2 db ?
    char db 'H'  
    str db "My Name is EMU8086 $"
    char2 db ? 
     

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    
    
    mov ah,4ch
    int 21h

    main endp
end main


ret




