;.MODEL SMALL
;.STACK 100H
;.DATA 
;    M1 DB 'ENTER CHARACTER: $' 
;    M2 DB 0AH, 0DH, 'POSITIVE$' 
;    M3 DB 0AH, 0DH, 'NEGATIVE$'
;    M4 DB 0AH, 0DH, 'ODD$' 
;    M5 DB 0AH, 0DH, 'EVEN$'
;.CODE
; MAIN PROC 
;    MOV AX, @DATA 
;    MOV DS, AX  
;    
;    MOV AH, 9 
;    LEA DX, M1 
;    INT 21H
;    
;     MOV AH, 1
;     INT 21H 
;     MOV BL, AL 
;     
;     MOV AH, 9 
;     TEST BL, 80H 
;     JZ POSITIVE 
;     
;     LEA DX, M3
;     INT 21H 
;     JMP CHECKEVENODD 
;     
;POSITIVE:
; 
;    LEA DX, M2 
;    INT 21H 
;  
;CHECKEVENODD: 
;
;    TEST BL, 01H
;    JZ EVEN 
;    LEA DX, M4
;     INT 21H
;      JMP EXIT
;      
;EVEN:
;
;     LEA DX, M5 
;     INT 21H 
;     
;EXIT:
;
;     MOV AH, 4CH
;      INT 21H
;       MAIN ENDP
;END MAIN   





;
;
;
;.MODEL SMALL
;.STACK 100H
;.DATA
;    M1 DB "ENTER CHARACTER : $ "
;    M2 DB 0AH,0DH, "IT,s BINARY : $ " 
;
;.CODE
; MAIN PROC
;     MOV AX,@DATA
;     MOV DS, AX
;     
;     MOV AH,9
;     LEA DX,M1
;     INT 21H
;     
;     MOV AH,1
;     INT 21H
;     MOV BL,AL
;     
;     MOV AH,9
;     LEA DX,M2
;     INT 21H
;     
;     MOV CX,8
;     MOV AH,2
;     
;REPEAT:
;        
;        ROL BL,1
;        JC PR1
;        
;        MOV DL,'0'
;        INT 21H
;        LOOP REPEAT
;        JMP EXIT
;        
;PR1:
;
;        MOV DL, '1'
;        INT 21H
;        LOOP REPEAT
;        
;EXIT:
;
;     MOV AH,4CH
;     INT 21H
;     MAIN ENDP
;END MAIN                            
;
;






.MODEL SMALL
.STACK 100H
.DATA
    NUM DB 10 DUP('$') 
    MSG DB "ENTER VALUE : $ "
    MSGNEG DB  0AH,0DH, "GIVEN NUMBER IS NEGATIVE. $"
    MSGPOS DB  0AH,0DH, "GIVEN NUMBER IS POSITIVE. $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX        
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
       
    MOV SI, OFFSET NUM
    
INPUT: 

    MOV AH, 1
    INT 21H
    CMP AL, 13
    JE CHECKNUM
    MOV [SI],AL
    INC SI
    JMP INPUT 
    
CHECKNUM:
   
     CMP NUM,'-'
    JE PRINTNEG
    MOV DX, OFFSET MSGPOS
    MOV AH, 9
    INT 21H
    MOV AH,4CH
    INT 21H 
    
PRINTNEG:  

    MOV DX, OFFSET MSGNEG
    MOV AH, 9
    INT 21H
    MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN              



