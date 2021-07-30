
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV DX,0
MOV AH,1
INT 21H

WHILE_:
    
    CMP AL,0DH
    JE END_WHILE_
    INC DX
    INT 21H
    JMP WHILE_

END_WHILE_: 
    MOV AH,4CH
    INT 21H


ret




