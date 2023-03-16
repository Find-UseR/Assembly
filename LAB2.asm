.MODEL
.STACK 1000H
.DATA
                                                                   
       
       INTRO DB  " HELLO WORLD ", 03,10,13, " WELCOME INTO THE SECOND LAB OF COAL",01," $"    
      
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
 
    
    MOV AH,9
    LEA DX, INTRO
    INT 21H
    
         
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP    

END MAIN