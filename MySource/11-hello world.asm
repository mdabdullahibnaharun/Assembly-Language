
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here    


mov ah, 09h              ; function to display string massange
mov dx, offset message   ; offset of message string

int 21h                  ;dos interrupt
mov ah, 4ch              ;function terminate
int 21h                  ;dos interrupt

endp

message db "Hello World$" ;this is string   

end main

ret




