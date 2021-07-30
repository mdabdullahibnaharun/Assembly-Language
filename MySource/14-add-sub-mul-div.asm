
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

mov ax,7 ; ax=7
add ax,4 ; ax=ax+4   

mov al,7 ; al=7
mov bl,3 ; al=ax+4

add al,bl ;al = al+bl

sub al,bl ;al = al-bl

;-------(+-)


mov al,10
mov bl,2

mul bl ; al = al*bl
div bl ; bl = bl/al
                        
                       
;---------(/*)


mov al,10
mov bl,2

add al,bl
sub al,bl

mul bl ; al = al*bl
div bl ; bl = bl/al
             







ret




