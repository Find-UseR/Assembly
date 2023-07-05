;.MODEL SMALL
;INPUT MACRO M1     
;    MOV AH,9
;    LEA DX,M1
;    INT 21H 
;    
;    MOV AH,1
;    INT 21H
;    MOV BL,AL
;    
;ENDM    
;DISPLAY MACRO M2
;    MOV AH,9
;    LEA DX,M2
;    INT 21H
;    
;    MOV AH,2
;    MOV DL,BL
;    INT 21H 
;    
;ENDM
;
;    
;.STACK 100H
;.DATA
;    M1 DB 10,13,"ENTER A NUMBER : $"
;    M2 DB 10,13,"DISPLAY : $"     
;.CODE
;MAIN PROC
;    MOV AX,@DATA
;    MOV DS,AX
;    
;    INPUT  M1
;        
;    DISPLAY M2
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;END MAIN          
;
;
;
;                                  
;.MODEL SMALL
;NXTLINE MACRO M1,M2     
;    MOV AH,9
;    LEA DX,M1
;    INT 21H 
;    
;    MOV AH,1
;    INT 21H
;    MOV BL,AL 
;    
;    MOV AH,2
;    MOV DL,0AH
;    INT 21H 
;    
;    MOV DL,0AH
;    INT 21H 
;    
;    MOV AH,9
;    LEA DX,M2
;    INT 21H
;    
;ENDM
;.STACK 100H
;.DATA
;    M1 DB 10,13,"PRESS ENTER TO MOVE NEXT LINE! $" 
;    M2 DB 10,13,"THANKYOU! $"     
;.CODE
;MAIN PROC
;    MOV AX,@DATA
;    MOV DS,AX
;    
;    NXTLINE M1,M2
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;END MAIN          
;


                
                
 
                                  
.MODEL SMALL
NXTLINE MACRO M1,M2     
    MOV AH,9
    LEA DX,M1
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL 
    
    MOV AH,2
    MOV DL,0AH
    INT 21H 
    
    MOV DL,0AH
    INT 21H 
    
    MOV AH,9
    LEA DX,M2
    INT 21H
    
ENDM
.STACK 100H
.DATA
    M1 DB 10,13,"ENTER 1ST NUMBER : $" 
    M2 DB 10,13,"ENTER 2ND NUMBER : $"
    M3 DB 10,13,"ENTER 3RD NUMBER : $"    
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    NXTLINE M1,M2
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN          
               