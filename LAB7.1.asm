.MODEL SMALL
.STACK 100H
.DATA


.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV DL,AL
    INT 21H
    MOV DH,AL
    INT 21H
    
    
    ADD DL,AL
    SUB DL,30H 
    
    ADD DL,DH
    SUB DL,30H 
    
    
    MOV AH,2
    INT 21H
      
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN

  
  
  