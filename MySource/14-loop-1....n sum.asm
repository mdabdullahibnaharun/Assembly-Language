
org 100h 

include "emu8086.inc" 

.model small
.stack 100h
.data

n db ?
sum db 0 

.code

main proc
    
    mov ax,@data
    mov ds,ax 
    
    print "Enter N: "
    mov ah,1
    int 21h
    sub al,48
    mov n,al 
    

   printn 
   
   mov bl,1 ;int i = 0
   
   top:
   cmp bl,n  ;cmp
   jg exit_loop  ;bl <=n
   add sum,bl    ;sum = sum + bl
   inc bl       ;bl=bl+1
   jmp top
   
   exit_loop:
   print "the sum is " 
   mov ah,2
   mov dl,sum
   int 21h
   
    
    
    
    
     mov ah,4ch
     int 21h
        
    main endp 
    

    DEFINE_SCAN_NUM
    DEFINE_PRINT_NUM
    DEFINE_PRINT_NUM_UNS
    DEFINE_PRINT_STRING


end main

ret


