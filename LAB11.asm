;.MODEL SMALL
;.STACK 100H
;.DATA   
;
;    M1 DB "ENTER CHARATER...! $"
;    M2 DB "Its BINARY $"
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
;    MOV AH,1
;    INT 21H
;    MOV BL,AL
;    
;    MOV AH,9
;    LEA DX,M2
;    
;    MOV CX,8
;    MOV AH,2
;    
;REPEAT:
;    ROL BL,1
;    JC PR
;    
;    MOV DL,'0'
;    INT 21H
;    LOOP REPEAT
;    JMP EXIT                               
;    
;PR:
;    MOV DL,'1'
;    INT 21H
;    LOOP REPEAT
;    
;EXIT:
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;END MAIN             





;.MODEL SMALL
;.STACK 100H
;.DATA   
;
;    M2 DB "SUM OF EVEN NUMBER IS: $"
;
;.CODE     
;MAIN PROC
;              
;              
;    MOV AX,@DATA
;    MOV DS,AX
;    
;    MOV AH,9
;    LEA DX,M2
;    INT 21H                    
;              
;    MOV CX,0
;    MOV AX,0  
;    
;L1:
;    ADD AX,CX
;    ADD CL,2
;    CMP CL,10       
;    JLE L1           
;    
;    MOV DX,0
;    MOV BX,10
;    MOV CX,0
;L2:
;    DIV BX
;    PUSH DX
;    
;    MOV DX,0
;    MOV AH,0
;    
;    INC CX
;    CMP AX,0
;    JNE L2
;    MOV AH,02H
;L3:
;    POP DX
;    ADD DX,48
;    INT 21H
;    LOOP L3
;         
;              
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;END MAIN               
  
  
.MODEL SMALL
.STACK 100H
.DATA
    M1 DB 0AH, 0DH, "ENTER CHARACTER: $" 
	M2 DB 0AH, 0DH, "NUMBER OF ZERO'S ARE: $"
	M3 DB 0AH, 0DH, "NUMBER OF ONE'S ARE: $"
	ZEROS DB 30H
	ONES DB 30H
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, M1
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
   
    MOV CX, 8
    MOV AH, 2
    
REPEAT:
    ROL BL, 1
    JC PR_1
    
    INC ZEROS
    LOOP REPEAT
    JMP EXIT
 
PR_1:
    INC ONES
    LOOP REPEAT
    
EXIT:      
    MOV AH, 9
    LEA DX, M2
    INT 21H
    
    MOV AH, 2
    MOV DL, ZEROS
    INT 21H
              
    MOV AH, 9
    LEA DX, M3
    INT 21H
              
    MOV AH, 2
    MOV DL, ONES
    INT 21H
    
    MOV  AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
              
              
