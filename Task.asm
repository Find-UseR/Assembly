.MODEL SMALL
.STACK 100H
.DATA
    A DB "ENTER A STRING: ",0AH,0DH, '$'
    C DB 0AH, 0DH, "NUMBER OF CHARACTER INPUTED: $"
    B DB ?
.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
    
    ;TASK 1
    MOV AH, 9
    LEA DX, A
    INT 21H
              
    MOV B, '0'
    
    MOV CX, 0   
REPEAT:
    CMP AL, '-'
    JE EXIT:
    
    INC B
    
    MOV AH, 1
    INT 21H
    
    LOOP REPEAT
EXIT:
    DEC B
    
    MOV AH, 9
    LEA DX, C
    INT 21H
     
    MOV AH, 2
    MOV DL, B
    INT 21H           
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN