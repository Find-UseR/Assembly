.MODEL SMALL
.STACK 100H
.DATA    

   VAL1 DB "ENTER 1ST NUM $"
   VAL2 DB 0AH,0DH ,"ENTER 2ND NUM $"
   VAL3 DB 0AH,0DH ,"ENTER 3ND NUM $" 
   VAL4 DB 0AH,0DH ,"SUM IS $"
   

.CODE                 
MAIN PROC         
    
    MOV AX, @DATA
    MOV DS,AX
    
   MOV AH,9
   LEA DX,VAL1
   INT 21H
   
   MOV AH,1
   INT 21H
   MOV BL,AL
   
   MOV AH,9
   LEA DX,VAL2
   INT 21H
   
   MOV AH,1
   INT 21H
   MOV BH,AL
   
    MOV AH,9
   LEA DX,VAL3
   INT 21H  
   
   
   MOV AH,1
   INT 21H
   MOV CL,AL
   
   ADD BL,BH
   SUB BL,30H 
   
   ADD BL,CL
   SUB BL,30H 
    
   MOV AH,9
   LEA DX,VAL4
   INT 21H
    
   MOV AH,2
   MOV DL,BL
   INT 21H
    
   MOV AH,4CH
   INT 21H
   MAIN ENDP
END MAIN
    