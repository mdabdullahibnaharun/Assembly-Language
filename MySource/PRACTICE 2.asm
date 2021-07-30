.MODEL SMALL
.STACK 100H
.DATA
    
    ;VARIABLES SEGMENT
    NUM DB 49
    CHAR DB 'A'
    MSG DB "MY NAME IS ABDULLAH $"
    
.CODE 
;CODE SEGMENT

MAIN PROC ;INT MAIN
    ;CODE SEGMENT
     
    
    MOV AX , @DATA
    MOV DS , AX
    
    MOV AH , 2
    MOV DL , NUM
    INT 21H 
     
    ;NEW LINE
    ;MOV AH , 2
    MOV DL , 0AH
    INT 21H
    MOV DL , 0DH
    INT 21H 
    
    ;MOV AH , 2
    MOV DL , CHAR
    INT 21H 
    
    ;NEW LINE
    ;MOV AH , 2
    MOV DL , 0AH
    INT 21H
    MOV DL , 0DH
    INT 21H 
                
    MOV AH , 9
    LEA DX , MSG
    INT 21H
    
    
    MOV AH , 4CH
    INT 21H
    MAIN  ENDP   

END MAIN ; RETURN 0