.MODEL SMALL
.STACK 100H
.DATA 
    M1 DB 'INPUT CHARACTER: $' 
    M2 DB 0AH, 0DH, 'POSITIVE$' 
    M3 DB 0AH, 0DH, 'NEGATIVE$'
    M4 DB 0AH, 0DH, 'ODD$' 
    M5 DB 0AH, 0DH, 'EVEN$'
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
     
     MOV AH, 9 
     TEST BL, 80H 
     JZ POSITIVE 
     
     LEA DX, M3
     INT 21H 
     JMP CHECKEVODD 
     
POSITIVE:
 
    LEA DX, M2 
    INT 21H 
  
CHECKEVODD: 

    TEST BL, 01H
    JZ EVEN 
    LEA DX, M4
     INT 21H
      JMP EXIT
      
EVEN:

     LEA DX, M5 
     INT 21H 
     
EXIT:

     MOV AH, 4CH
      INT 21H
       MAIN     ENDP
END MAIN