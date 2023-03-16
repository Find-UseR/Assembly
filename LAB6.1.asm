.MODEL SMALL
.STACK 100H
.DATA
      
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX 
    
     MOV AH, 2
     MOV DL, "*"
     INT 21H  
    
    
     
     INT 21H 
    
   
     INT 21H
    
    
     INT 21H
    
     
     INT 21H
    
    
     INT 21H
    
    
     INT 21H      
    
     MOV DL, "&"
     INT 21H
    
     MOV AH, 2
     MOV DL, 0AH
     INT 21H  
    
     MOV DL, 0DH
     INT 21H   
    
     MOV DL, "*"
     INT 21H
    
    
     INT 21H  
     
     INT 21H
    
     INT 21H
 
     INT 21H
    
     
     INT 21H     
    
     MOV DL, "&"
     INT 21H     
    
     MOV AH, 2
     MOV DL, 0AH
     INT 21H  
    
     MOV DL, 0DH
     INT 21H   
    
     MOV DL, "*"
     INT 21H
    
   
     INT 21H
    
     INT 21H
    
    
     INT 21H
    
     
     INT 21H 
     
     MOV DL, "&"
     INT 21H
     
     MOV AH, 2
     MOV DL, 0AH
     INT 21H  
    
     MOV DL, 0DH
     INT 21H   
    
     MOV DL, "*"
     INT 21H
    
     
     INT 21H
    
     
     INT 21H
    
     
     INT 21H
     
     MOV DL, "&"
     INT 21H  
     
      MOV AH, 2
      MOV DL, 0AH
      INT 21H  
    
     MOV DL, 0DH
     INT 21H   
    
     MOV DL, "*"
     INT 21H
    
     
     INT 21H
    
     INT 21H
     
     MOV DL, "&"
     INT 21H 
     
      MOV AH, 2
     MOV DL, 0AH
     INT 21H  
    
     MOV DL, 0DH
     INT 21H   
    
     MOV DL, "*"
     INT 21H
    
    
     INT 21H
     
     MOV DL, "&"
     INT 21H    
     
      MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, "*"
    INT 21H
     
     MOV DL, "&"
     INT 21H   
     
      MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H 
     
     MOV DL, "&"
     INT 21H    
     
       MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H 
     
     MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, " "
    INT 21H
    
    INT 21H
    
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
     MOV DL, " "
    INT 21H
    
    INT 21H
    
    INT 21H  
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, " "
    INT 21H
    
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
    INT 21H
  
    INT 21H
    
     MOV DL, " "
    INT 21H
    
    INT 21H   
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, " "
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
    INT 21H
   
    INT 21H
    
    INT 21H
    
    INT 21H
    
    MOV DL, " "
    INT 21H    
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, "*"
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
  
    INT 21H     
    
      MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H 
    
     MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, " "
    INT 21H
    
    INT 21H
    
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
     MOV DL, " "
    INT 21H
    
    INT 21H
    
    INT 21H  
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, " "
    INT 21H
   
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
    INT 21H
   
    INT 21H
    
     MOV DL, " "
    INT 21H
    
  
    INT 21H   
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
                   
                   
     MOV DL, " "
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
    
    MOV DL, " "
    INT 21H    
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, "*"
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H
    
    INT 21H     
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, " "
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
   
    INT 21H
    
    
    INT 21H
    
    
    INT 21H
    
 
    INT 21H
    
    MOV DL, " "
    INT 21H    
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, " "
    INT 21H
    
  
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
    
    INT 21H
    
    
    INT 21H
    
     MOV DL, " "
    INT 21H
    
    
    INT 21H   
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, " "
    INT 21H
    
    
    INT 21H
    
     
    INT 21H
    
     MOV DL, "*"
    INT 21H
    
     MOV DL, " "
    INT 21H
    
     
    INT 21H
    
    
    INT 21H     
              
      MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H           
              
      MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
           
        
           
     MOV DL, "*"
    INT 21H
    
     
    INT 21H
    
   
    INT 21H
    
   
    INT 21H
    
    
    INT 21H
    
    
    INT 21H  
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, "*"
    INT 21H
    
    INT 21H
    
     
    INT 21H
    
     
    INT 21H
    
     
    INT 21H
    
     
    INT 21H  
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, "*"
    INT 21H
    
     
    INT 21H
    
     
    INT 21H
    
     
    INT 21H
    
     
    INT 21H
    
     
    INT 21H  
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV DL, 0DH
    INT 21H   
    
     MOV DL, "*"
    INT 21H
    
    
    INT 21H
    
     
    INT 21H
    
    
    INT 21H
    
     
    INT 21H
    
    
    INT 21H
    
           
                      
    
     MOV AH, 4CH
    INT 21H
    MAIN ENDP
    
END MAIN