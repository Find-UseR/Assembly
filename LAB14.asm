.MODEL SMALL
.STACK 100H
.DATA
   M1 DB 0AH,0DH, "ENTER NUMBER: $"
   M2 DB 0AH,0DH, "YOU ENTERED: $"
.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, M1
    INT 21H
    
    CALL DECIN
    
    PUSH AX
    
    MOV AH, 9
    LEA DX, M2
    INT 21H
    
    CALL DECOUT
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP 
    
DECIN PROC  
    PUSH CX
    PUSH DX   
    
    
  BEGIN:
    XOR BX, BX
    XOR CX, CX
    
    MOV AH, 1
    INT 21H
    
    CMP AL, '-'
    JE MINUS
    
    CMP AL, '+'
    JE PLUS
    
    JMP REPEAT2
  
  MINUS:
    MOV CX, 1
    
  PLUS:
    INT 21H
    
  REPEAT2:
    CMP AL, '0'
    JL NOT_DIGIT
    CMP AL, '9'
    JG NOT_DIGIT
    
    AND AX, 000FH
    PUSH AX
    
    MOV AX, 10
    MUL BX
    
    POP BX
    ADD BX, AX
    
    MOV AH, 1
    INT 21H
    
    CMP AL, 0DH
    JNE REPEAT2
    
    MOV AX, BX
    
    CMP CX, 0
    JE EXITT
    
    NEG AX
    
    
  EXITT:
    POP DX
    POP CX
    MOV BX, AX
    RET
    
  NOT_DIGIT:
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H          
                 
    JMP BEGIN 
    
    RET
    
    DECIN ENDP

DECOUT PROC  
    

    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX 
    
    MOV AX, BX 
    
    CMP AX, 0
    JG ALPHA
    
    PUSH AX
    
    MOV DL, '-'
    MOV AH, 2
    INT 21H
    
    POP AX
    NEG AX
    
  ALPHA:
    XOR CX, CX
    MOV BX, 10
    
  WHILE_:
    XOR DX, DX
    
    DIV BX
    PUSH DX
    INC CX
    
    CMP AX, 0
    JNE WHILE_
    
    MOV AH, 2
  
  PRINTTT:
    POP DX
    ADD DL, 48
    INT 21H
    LOOP PRINTTT
    
    POP DX
    POP CX
    POP BX
    POP AX
    
    RET  
    
    DECOUT ENDP 

END MAIN
