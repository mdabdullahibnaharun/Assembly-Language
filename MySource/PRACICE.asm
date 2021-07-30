.MODEL SMALL
.STACK 100H
.DATA
    
    ;WHERE ALL THE VARIABLE WE DECLERE 
    ;NUM1 DB ?  
    
    ;BH,BL = 8 BITS 1 BYTE
    ;BX 16 BITS 1 WORD   
    
    NUM DB 'd' ; d = 100
    NUM2 DB ?
    CHAR DB '#'
    STR DB "MY NAME IS ABDULLAH"
    CHAR2 DB ?
    
    
    
    

.CODE     
    
    ;CODE SEGMENT
    
    
    MAIN PROC : ;INT MAIN
        ;STATEMENT
        
        ;MOV BH , 4
        ;MOV BL , 5 
        ;ADD BH , BL ; BH=BH+BL
        
        MOV AX , @DATA
        MOV DS , AX
        
        
    
        
        
        
        MOV AH , 4CH
        INT 21H   

    MAIN ENDP    
    
END MAIN ;RETURN 0