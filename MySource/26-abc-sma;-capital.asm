
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small

.stack 100h

.data

.code

main proc
    
        
        mov cx, 26   ;run time
        mov dx, 65   ;strt from   A = 65 Z = 91
        
        capitals:
            
            mov ah,2
            int 21h
            
            inc dx
            
        loop capitals   
        
        
        mov cx, 26   ;run time
        mov dx, 91   ;strt from   A = 65 Z = 91
        
        capitalr:
            
            mov ah,2
            int 21h
            
            dec dx
            
        loop capitalr
        
        
        mov cx,26
        mov dx,97
        
        
        smalls:
        
            mov ah,2
            int 21h
            
            inc dx
            
        loop smalls  
        
        
        mov cx,26
        mov dx,122
        
        
        smallr:
        
            mov ah,2
            int 21h
            
            dec dx
            
        loop smallr 
        
        
    
    
    
        
        mov ah,4ch
        int 21h
        
    main endp
end main


ret




