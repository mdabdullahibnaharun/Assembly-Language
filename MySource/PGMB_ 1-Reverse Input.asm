
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    
    MOV AH,2
    MOV DL,'?'
    INT 21H
    
    XOR CX,CX ;=0
    
    MOV AH,1
    INT 21H
    
    
    WHILE_:
        CMP AL,0DH
        JE END_WHILE
        PUSH AX
        INC CX
        
        INT 21H
        JMP WHILE_
        
    END_WHILE:
        MOV AH,2
        MOV DL,0DH
        INT 21H
        MOV DL,0AH
        INT 21H
        JCXZ EXIT
        
    TOP:
        POP DX
        
        INT 21H
        LOOP TOP
        
    EXIT:
        MOV AH,4CH
        INT 21H
        
    
    MAIN ENDP
END MAIN
    

ret




