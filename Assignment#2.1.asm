.MODEL SMALL
.STACK 100H 
.DATA
    V1 DB 0AH, 0DH, "Enter 2 Capital Letters: $"
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 2
    MOV DL, 3FH
    INT 21H
    
    MOV AH, 9
    LEA DX, V1
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    INT 21H
    MOV BH, AL
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    
    MOV DL, 0DH
    INT 21H
    
    CMP BL, BH
    JG PRINT
    
    JMP CONTINUE 
           
CONTINUE:
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    MOV DL, BH
    INT 21H 
    JMP EXIT            
           
PRINT:     
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    MOV DL, BL
    INT 21H  

EXIT:    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN