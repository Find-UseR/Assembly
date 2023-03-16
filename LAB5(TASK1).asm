.MODEL
.STACK 1000H
.DATA
                                                                   
       
      
       VAR DB 0AH,0DH, " ENTER YOUR NAME  $"  
       DIS DB 0AH,0DH, " YOUR NAME IS  $"  
       
      
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
  
     MOV AH,9
    LEA DX, VAR
    INT 21H
              
     
   MOV AH, 1
   INT 21H 
   MOV BL,AL  
   
     
   INT 21H 
   MOV BH,AL 
   
   INT 21H 
   MOV CL,AL
   
   INT 21H
   MOV CH,AL 
   
   
   MOV AH,2
   MOV DL,0AH
   INT 21H
   
   MOV DL,0DH
   INT 21H
    
   
    MOV AH,9
    LEA DX, DIS
    INT 21H 
   
   
   MOV AH,2
   MOV DL,BL 
   INT 21H
   
   MOV DL,BH
   INT 21H
   
   MOV DL,CL
   INT 21H
   
   MOV DL,CH
   INT 21H     
         
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN