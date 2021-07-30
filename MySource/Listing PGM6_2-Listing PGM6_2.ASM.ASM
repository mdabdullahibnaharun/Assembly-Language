
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H
.DATA

PROMPT DB 'TYPE A LINE OF TEXT',0DH,0AH,'$'
CAP_MSG DB 'FIRST CAPITAL= '
FIRST DB ']'
      DB 'LAST CAPITAL = '
     
LAST  DB '@ $'
NOCAP_MSG DB 'NO CAPTAL $'

.CODE 

MAIN PROC
    
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9
        LEA DX,PROMPT
        INT 21H
        
        MOV AH,1
        INT 21H
        
        WHILE_:
            CMP AL,0DH
            JE END_WHILE_;
            
            CMP AL,'A'
            JNGE END_IF
            CMP AL,'Z'
            JNLE END_IF
            
            CMP AL,FIRST
            JNL CHECK_LAST
            
            MOV FIRST,AL
            
            
        CHECK_LAST:
            CMP AL,LAST
            JNG END_IF
            MOV LAST,AL
            
        END_IF:
            INT 21H
            JMP WHILE_
            
        END_WHILE_:
            MOV AH,9
            CMP FIRST,']'
            JNE CAPS
            
            LEA DX,NOCAP_MSG
            JMP DISPLAY
           
       CAPS:
            LEA DX,NOCAP_MSG
       
       DISPLAY:
            INT 21H
            MOV AH,4CH
            INT 21H
            
    MAIN ENDP
END MAIN
            

ret




