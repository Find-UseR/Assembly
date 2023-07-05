;.MODEL SMALL
;PRINT MACRO M1, M2, M3
;    MOV AH,9
;    LEA DX,M1
;    INT 21H
;ENDM
;.STACK 100H
;.DATA
;    M1 DB 10,13, "ENTER $"
;    M2 DB 10,13, "SAFE $"
;    M3 DB 10,13, "ZONE $"    
;.CODE
;MAIN PROC
;    MOV AX,@DATA 
;    MOV DS,AX
;    
;    PRINT M1
;    PRINT M2
;    PRINT M3
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;    
;END MAIN          





;;LINKED LIST

.MODEL SMALL 
.STACK 100H
.DATA
    ARR DB 10 DUP (?-1)
    P1  DW 0 
    P2  DW 1
    P3  DW 1 
    FD  DW 0
    
    
    
    
    
    
    
    
    M1 DB 10,13, "NUMBERS NOT FOUND! $"
    
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    
    CALL INSERT
    
    MOV AH,4CH
    INT 21H
MAIN ENDP


    
INSERT PROC
    INC CX
    CMP P1,0
    
    JNE SECOND
    
    MOV SI,P1
    MOV ARR[SI],AL
    
    INC P1
    INC P1
    
    RET
    
SECOND:
    MOV SI,P2
    MOV BX,P1
    
    MOV ARR[SI],BL
    INC P2
    INC P2
    
    MOV DI,P1
    MOV ARR[DI],AL
    
    INC P1
    INC P1
    
    RET
INSERT ENDP
    

DELETE PROC  
    MOV SI,FD
    MOV BX,0
    

SEARCH:    
    CMP ARR[SI],AL
    JE FND
    INC SI
    
    MOV P3, SI
    MOV BL,ARR[SI]
    MOV SI,BX     
    
    LOOP SEARCH
    
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    JMP TERM
    
 FND:
    CMP P3,0
    JE DELF
    
    MOV DI,P3
    INC SI
    
    MOV BL,ARR[SI]
    MOV ARR[DI],BL
    JMP TERM
    
DELF:
    INC FD
    INC FD
    
TERM:
    MOV P3,0
    RET
    
DELETE ENDP

    
END MAIN     