.MODEL
.STACK 100H
.DATA
                                                                   
       
       INTRO DB  " HELLO WORLD $"
       LAB DB 0AH,0DH, " WELCOME INTO THE FIRST LAB  $"
      
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH,9
    LEA DX, INTRO
    INT 21H
    
     MOV AH,9
    LEA DX, LAB
    INT 21H
            
    ;MOV AH,9
    ;LEA DX, EMU
    ;INT 21H        
    
    ;MOV AH,9
    ;LEA DX, EME
    ;INT 21H 
    
    ;MOV AH,9
    ;LEA DX, EXE
    ;INT 21H    ;    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN