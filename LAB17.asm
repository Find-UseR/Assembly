;.MODEL SMALL
;.STACK 100H
;.DATA
;    STR DB 20 DUP(?)
;  
;    M1 DB "ENTER 1ST STRING : $"
;    
;    M2 DB 0AH,0DH,"DISPLAY STRING : $"
;.CODE
;MAIN PROC
;    MOV AX,@DATA
;    MOV DS,AX
;    MOV ES,AX
;    
;    MOV AH,9
;    LEA DX,M1
;    INT 21H 
;    
;    CALL STRINP
;    
;    MOV AH,9
;    LEA DX,M2
;    INT 21H
;    
;    CALL STROUT
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;
;
;STRINP PROC 
;    
;    LEA DI,STR
;    CLD 
;    MOV AH,1
;    
;INPUT:
;    
;    INT 21H 
;    CMP AL,0DH
;    JE ENDINP
;    
;    STOSB
;    
;    JMP INPUT
;    
;    
;ENDINP:
;         
;    INC DI
;    MOV [DI],"$"     
;    RET   
;    
;    STRINP ENDP
;    
;STROUT PROC
;    
;    MOV AH,9
;    LEA DX,STR
;    INT 21H
;    
;    
;    STROUT ENDP
;
;END MAIN
;   




.MODEL SMALL
.STACK 100H
.DATA
    STR DB 20 DUP(?)
    M1 DB 0AH,0DH,"ENTER 1ST STRING : $" 
    STU DB 20 DUP(?)
    M2 DB 0AH,0DH,"ENTER 2ND STRING : $"
    M3 DB 0AH,0DH,"DISPLAY STRING : $"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV ES,AX
    
    MOV AH,9
    LEA DX,M1
    INT 21H 
    
    CALL STRINP 
    
    MOV AH,9
    LEA DX,M2
    INT 21H 
    
    CALL STUINP
    
    
    
    MOV AH,9
    LEA DX,M3
    INT 21H
    
    CALL STROUT  

 
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP


STRINP PROC       ;;;1ST
    
    LEA DI,STR
    CLD 
    MOV AH,1
    
INPUT:
    
    INT 21H 
    CMP AL,0DH
    JE ENDINP
    
    STOSB
    
    JMP INPUT
    
    
ENDINP:
         
    INC DI
    MOV [DI],"$"     
    RET   
    
STRINP ENDP  ;;1ST


STUINP PROC     ;;;2ND
    
    LEA DI,STU
    CLD 
    MOV AH,1
    
INP:
    
    INT 21H 
    CMP AL,0DH 
    
    JE ENDIN
    
    STOSB
    
    JMP INP
    
    
ENDIN:
         
    INC DI
    MOV [DI],"$"     
    RET   
    
    STUINP ENDP
    
STROUT PROC
    
    MOV AH,9
    LEA DX,STU
    INT 21H
    
    
    STROUT ENDP 
                 
                
END MAIN