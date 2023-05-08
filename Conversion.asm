.MODEL SMALL
.STACK 100H
.DATA

   V1 DB 10,13,10,13,"ENTER 1 FOR BINARY INPUT OUTPUT   :",10,13,"ENTER 2 FOR DECIMAL INPUT OUTPUT :",10,13,"ENTER 3 FOR HEXA INPUTP OUTPUT   :",10,13,10,13,"$"
   V2 DB 10,13,10,13,"ENTER BINARY VALUE :$"
   V3 DB 10,13,10,13,"ENTER DECIMAL VALUE :$"
   V4 DB 10,13,10,13,"ENTER HEXA VALUE :$"
   V5 DB 10,13,10,13,"YOU ENTERED :$"
   V6 DB 10,13,10,13,"FOR RESTART AGAIN PRESS Y FOR YES AND N FOR NO :$"

.CODE
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
   REPET:
    
    MOV AH,9
    LEA DX,V1
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'1'
    JE BNRY
    
    CMP AL,'2'
    JE DCML
    
    CMP AL,'3'
    JE HEXA
    
   BNRY:
    MOV AH,9
    LEA DX,V2
    INT 21H
    
    CALL BNRYIN
    
    PUSH AX
    PUSH DX
    
    MOV AH,9
    LEA DX,V5
    INT 21H
    
    POP DX
    POP AX
    
    CALL BNRYOUT 
    
    JMP EXIIT
     
   DCML:
      MOV AH,9
      LEA DX,V3
      INT 21H
    
    CALL DECIN
    
    PUSH AX
    PUSH DX
    
    MOV AH,9
    LEA DX,V5
    INT 21H
    
    POP DX
    POP AX
    
    CALL DECOUT 
    
    JMP EXIIT
    
   HEXA:
    MOV AH,9
    LEA DX,V4
    INT 21H
    
    CALL HEXAIN
    
    PUSH AX
    PUSH DX
    
    MOV AH,9
    LEA DX,V5
    INT 21H
    
    POP DX
    POP AX
    
    CALL HEXAOUT 
    
    JMP EXIIT
    
   EXIIT:
    
    MOV AH,9
    LEA DX,V6
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL,'Y'
    JE REPET
    
    CMP AL,'y'
    JE REPET
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
  
  BNRYIN PROC 
    
    XOR BX,BX 
    XOR AX,AX
    
    MOV AH,1
    
   INPUT:
    INT 21H
    CMP AL,0DH
    JE END_INPUT
    
    SHL BX,1
    SUB AL,30H
    OR BL,AL
    JMP INPUT
    
   END_INPUT:
  
   RET
    BNRYIN ENDP
  
  BNRYOUT PROC
  
   XOR CX,CX
   
   MOV CX,16
   
   
  PRINTT:
   ROL BX,1
   JC DISPONE
   
   MOV DL,'0'
   MOV AH,2
   INT 21H
     
     LOOP PRINTT
      
   JMP EXITT
  DISPONE:
   MOV AH,2
   MOV DL,'1'
   INT 21H
      LOOP PRINTT
      
   EXITT:
   
   RET
    BNRYOUT ENDP 
  
  DECIN PROC
    PUSH BX
    PUSH CX
    PUSH DX
    
  BEGIN:
    XOR BX,BX
    XOR CX,CX
    
    MOV AH,1
    INT 21H
    
    CMP AL,'-'
    JE MINUS
    
    CMP AL,'+'
    JE PLUS
    
    JMP REPEAT
    
   MINUS:
    MOV CX,1
    
   PLUS:
    INT 21H
    
   REPEAT:
    CMP AL,'0'
    JL NOTDIGIT
    CMP AL,'9'
    JG NOTDIGIT
    
    AND AX,000FH
    PUSH AX
    
    MOV AX,10
    MUL BX
    
    POP BX
    ADD BX,AX
    
    MOV AH,1
    INT 21H
    
    CMP AL,0DH 
    JNE REPEAT
    
    MOV AX,BX
    
    CMP CX,0
    JE EXIT
    
    NEG AX
    
   EXIT:
    POP DX
    POP CX
    POP BX 
    
    RET
    
   NOTDIGIT:
   
    MOV AH,2
    
    MOV DL,0AH
    INT 21H
    
    MOV DL,0DH
    INT 21H
    
    JMP BEGIN
    
    DECIN ENDP
  
 DECOUT PROC
    
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    
    CMP AX,0
    JG ALPHA
    
    PUSH AX
    
    MOV DL,'-'
    MOV AH,2
    INT 21H
    
    POP AX
    
    NEG AX
    
   ALPHA:
    XOR  CX,CX
    MOV BX,10
    
   WHILE:
    XOR DX,DX
     
    DIV BX
    PUSH DX
    
    INC CX
    
    CMP AX,0
    JNE WHILE
    
    MOV AH,2
    
   PRINT:
    POP DX
    ADD DL,48
    INT 21H
    
    LOOP PRINT
    
    POP DX
    POP CX
    POP BX
    POP AX
    
    RET 
    
    DECOUT ENDP
 HEXAIN PROC
    
    XOR BX,BX
    
    MOV CL,4
    MOV AH,1
    
    
   INPUUT:
    INT 21H
    CMP AL,0DH
    JE END
    
    SHL BX,CL
    CMP AL,'9'
    JLE NUMBER
    
    SUB AL,37H
    JMP INSERT
   
   NUMBER:
    SUB AL,30H
   
   INSERT:
    OR BL,AL
    JMP INPUUT
    
   END:
   
   RET
   HEXAIN ENDP
 
 HEXAOUT PROC
    MOV CX,4
    MOV AH,2
    
   PRIINT:
   
    MOV DL,BH
    
    SHR DL,1
    SHR DL,1
    SHR DL,1
    SHR DL,1
    
    CMP DL,9
    JLE DISPNMBR
    
    ADD DL,37H
    JMP DISP
    
   DISPNMBR:
    
    ADD DL,'0'
    
   DISP:
    INT 21H
    
    ROL BX,1
    ROL BX,1
    ROL BX,1
    ROL BX,1
        LOOP PRIINT
        
    RET 
    
    HEXAOUT ENDP
END MAIN
