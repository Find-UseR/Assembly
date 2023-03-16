.MODEL
.STACK 100H
.DATA     
                                                                   
       
       PROMPT1 DB  " ENTER DIGITS FROM A-F $"
       PROMPT2 DB 0AH,0DH, " THE CORESPONDING DECIMAL DIGITS IS  $"
      
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9
    LEA DX, PROMPT1
    INT 21H
                   
    MOV AH,1
    INT 21H
    MOV BL,AL
    
   MOV AH,9
    LEA DX, PROMPT2
    INT 21H       
    
    MOV AH,2
    MOV DL,31H
    INT 12H
    
    SUB BL,11H
    
    MOV DL,BL
    INT 21H        
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN