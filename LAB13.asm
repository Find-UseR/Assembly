;/////////////REVERSE METHOD//////////////

;.MODEL SMALL
;.STACK 100H
;.DATA
;        M1 DB "ENTER A STRING : $"
;        M2 DB 0AH,0DH, "IT'S REVERSE : $"
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


;/////////LENGTH OF STACK/////////


;.MODEL SMALL
;.STACK 100H
;.DATA
;    M1 DB "ENTER A STRING : $"
;    M2 DB 0AH,0DH, "LENGTH IS : $"
;.CODE
;MAIN PROC
;    MOV AX, @DATA
;    MOV DS,AX      
;    
;    MOV AH,9
;    LEA DX,M1
;    INT 21H
;    
;    MOV BL,0
;    ADD BL,30H
;    
;    XOR CX,CX 
;    
;    MOV AH,1
;
;INP:
;    INT 21H
;    CMP AL,0DH
;    JE END_INP
;    
;    INC CX
;    PUSH AX   
;    INC BL
;    JMP INP
;          
;          
;END_INP:
;    MOV AH,9
;    LEA DX,M2
;    INT 21H
;    
;    MOV AH,2 
;    MOV DL,BL
;    INT 21H
;    
;
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;END MAIN   



;
;;;///////////DISPLAY FIRST AND LAST CHARACTER OF STACK/////////////
;
;
;.MODEL SMALL
;.STACK 100H
;.DATA
;        M1 DB "ENTER A STRING : $"
;        M2 DB 0AH,0DH, " FIRST CHAR : $" 
;        M3 DB 0AH,0DH, " LAST CHAR : $"
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
;    
;DISP:
;    POP DX
;    INT 21H
;   
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;END MAIN        
;                                       
;                                       
;                                       
;                                       
;                                       
                                       
                                       
                                       
                                       
 ;//////////////////
 ;.MODEL SMALL
;.STACK 100H
;.DATA
;M1 DB "ENTER FIRST CHARACTER $"   
;M2 DB 0AH,0DH,"ENTER 2ND CHARACTER $"
;M3 DB  0AH,0DH, "ENTER OPERATION (+,-) $"  
;M4 DB  0AH,0DH, "ANS $"
;
;
;.CODE
;MAIN PROC
;    MOV AX,@DATA
;    MOV DS,AX
;    
;    MOV AH,9
;    LEA DX,M1
;    INT 21H
;    
;    
;    MOV AH,1
;    INT 21H
;    MOV BL,AL
;    
;    MOV AH,9
;    LEA DX,M2
;    INT 21H
;    
;    
;    MOV AH,1
;    INT 21H
;    MOV BH,AL
;    
;    
;    
;    MOV AH,9
;    LEA DX,M3
;    INT 21H
;    
;    
;    MOV AH,1
;    INT 21H
;    MOV CL,AL
;    
;    CMP CL,043
;    JE PLUS
;    CMP CL,045
;    JE MIN
;    
;    JMP EXIT
;    
;PLUS:
;   ADD BL,BH
;   SUB BL,30H
;   MOV AH,9
;   LEA DX,M4
;   INT 21H
;   MOV AH,2
;   MOV DL,BL
;   INT 21H
;   JMP EXIT
;MIN:
;   SUB BL,BH
;   ADD BL,30H
;   MOV AH,9
;   LEA DX,M4
;   INT 21H
;   MOV AH,2
;   MOV DL,BL
;   INT 21H   
;   JMP EXIT
;EXIT:
;   MOV AX,4CH
;   INT 21H
;   MAIN ENDP
;END MAIN 