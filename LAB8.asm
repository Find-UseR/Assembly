.MODEL SMALL
.STACK 100H
.DATA
        
     VAL1 DB "ENTER A CHAR $"   
     
     VAL2 DB 0AH,0DH, "YOU ENTERED $"    
     
     VAL3 DB 0AH,0DH, "ENTER A CHAR IN UPPERCASE $"
     
     VAL4 DB 0AH,0DH, "ENTER A CHAR IN LOWERCASE $" 
     
     VAL5 DB 0AH,0DH, "ENTER THREE CHARS  $"
        
     VAL6 DB 0AH,0DH, "********$"
     
     
     
             
.CODE
MAIN PROC    
    MOV AX,@DATA
    MOV DS,AX
     
    ;1ST 
     
    MOV AH,9
    LEA DX,VAL1
    INT 21H
    
    
    MOV AH, 1
    INT 21H
    MOV BL,AL 
    
    MOV AH,2
    MOV DL, 20H
    INT 21H
        
    MOV DL,BL
    INT 21H
              
    ;2ND          
    
    MOV AH,9
    LEA DX,VAL2
    INT 21H
     
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    ;3RD
     
    MOV AH,9
    LEA DX,VAL3
    INT 21H
       
    MOV AH,1 
    INT 21H  
    MOV BL,AL
    
    ADD BL, 32
    INT 21H 
    
    MOV AH, 2
    MOV DL, BL
    INT 21H 
    
        
    ;4TH
    
    MOV AH,9
    LEA DX,VAL4
    INT 21H 
    
    MOV AH,1 
    INT 21H  
    MOV BL,AL
    
    ADD BL, -32
    INT 21H 
    
    MOV AH, 2
    MOV DL, BL
    INT 21H 
    
    
    ;5TH
     
    
    MOV AH,9
    LEA DX,VAL5
    INT 21H    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,1
    INT 21H
    MOV CL,AL
         
    MOV AH,9
    LEA DX,VAL6
    INT 21H 
    
    INT 21H 
    
    INT 21H 
    
    INT 21H     
         
    MOV AH,2
    MOV DL,0AH
    INT 21H 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    
    MOV AH,2
    MOV DL,"*"
    INT 21H   
    
    INT 21H
    
    MOV  AH,2
    MOV DL,BL
    INT 21H 
    
    MOV  AH,2
    MOV DL,BH
    INT 21H
    
    MOV  AH,2
    MOV DL,CL
    INT 21H
    
    MOV AH,2
    MOV DL,"*"
    INT 21H
    
    INT 21H
    
    INT 21H 
    
    MOV AH,9
    LEA DX,VAL6
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
    
      
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
               
               