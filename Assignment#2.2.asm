.MODEL SMALL
.STACK 100H
.CODE
          
     MOV CX, 127
     MOV BL, 0
     
 PRINT:  
       
     MOV AH, 2
     INC CX
     CMP CX, 255
     JA EXIT
     MOV DX, CX
     INT 21H
     MOV DX, 32D 
     INT 21H
     JMP GO
     
 GO:
   
   INC BL 
   CMP BL, 10
   JE AB
   JMP PRINT   
   
 AB:
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV BL, 0
    JMP PRINT

 EXIT:

    MOV AH, 4CH
    INT 21H