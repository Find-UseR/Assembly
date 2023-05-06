;/////////LENGTH OF STACK/////////


;.MODEL SMALL
;.STACK 100H
;.DATA
;    M1 DB "ENTER A STRING : $"
;    M2 DB 0AH,0DH, "LENGTH IS : $"
;.CODE
;MAIN PROC
;    MOV AX, @DATA
;    MOV DS,AX      
;    
;    MOV AH,9
;    LEA DX,M1
;    INT 21H
;    
;    MOV BL,0
;    ADD BL,30H
;    
;    XOR CX,CX 
;    
;    MOV AH,1
;
;INP:
;    INT 21H
;    CMP AL,0DH
;    JE END_INP
;    
;    INC CX
;    PUSH AX   
;    INC BL
;    JMP INP
;          
;          
;END_INP:
;    MOV AH,9
;    LEA DX,M2
;    INT 21H
;    
;    MOV AH,2 
;    MOV DL,BL
;    INT 21H
;    
;
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;END MAIN   

