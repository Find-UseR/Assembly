;;;///ENTER A STRING AND TERMINATE WITH UNDERSCORE AND COUNT TOTAL CHARACTERS AND DISPLAY IT.

.MODEL SMALL
.STACK 100H
.DATA
    M1 DB "ENTER CHARACTER : $"
    M2 DB 0AH,0DH, "TOTAL CHARACTERS : $"
    
.CODE
  MAIN PROC
    

    MOV AX, @DATA
    MOV DS,AX 
    
    MOV CL,"0"
    
    MOV AH,9
    LEA DX,M1
    INT 21H 
    
JUMP:      
    
    INC CL

    MOV AH,1
    INT 21H
    MOV BL,AL
             
             
    MOV BH,"-"
    
    CMP BL,BH
    JE EXIT   
    
    JMP JUMP
    
EXIT: 

    MOV AH,9
    LEA DX,M2
    INT 21H
    
    DEC CL
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
            
 

