;.MODEL SMALL
;.STACK 100H
;.DATA
;        M1 DB "ENTER A STRING $"
;        M2 DB 0AH,0DH, "REVERSE  $"
;
;.CODE
;MAIN PROC   
;    MOV AX,@DATA
;    MOV DS, AX
;    
;    MOV AH,9
;    LEA DX,M1
;    INT 21H
;    
;    XOR CX, CX
;    MOV AH,1
;    
;INP:
;    INT 21H
;    CMP AL,0DH
;    JE END_INP
;    
;    INC CX
;    PUSH AX
;    JMP INP
;
;END_INP:
;    MOV AH,9
;    LEA DX,M2
;    INT 21H
;    
;    MOV AH,2
;    
;DISP:
;    POP DX
;    INT 21H
;    LOOP DISP
;    
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;END MAIN        
;
;
;
