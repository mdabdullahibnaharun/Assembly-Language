INCLUDE 'EMU8086.INC'

.MODEL SMALL

.DATA  

    VAR1 DB "SUM: "

.CODE

MAIN PROC 
    
    MOV AX, @DATA
    MOV DS, AX
        
    CALL SCAN_NUM  ; 1 INPUT IN CX REGISTOR
    MOV BX , CX    ; 1ST IINPUT IN BX
    
    CALL SCAN_NUM  ; 2 IN CX 
    MOV DX , CX    ; 2 IN DX   
    
    
    ADD BX,DX      ;BX = BX+DX  
    
    ;DATA ADDRESS
    LEA DX, VAR1
    CALL PRINT_STRING
    
    
    MOV AX,BX      ; OUTPUT REGISTER
    CALL PRINT_NUM ;FUNCTION
               
    
        
        

    
    MAIN ENDP 
    
        DEFINE_SCAN_NUM 
        DEFINE_PRINT_NUM
        DEFINE_PRINT_NUM_UNS 
        DEFINE_PRINT_STRING
    
END MAIN