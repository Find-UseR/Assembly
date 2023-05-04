;;BY USING FILE METHOD
     


;.MODEL SMALL
;.STACK 100H
;.DATA
;        M1 DB "ENTER A STRING $"
;        M2 DB 0AH,0DH, "REVERSE  $"
;
;.CODE
;MAIN PROC   
;    MOV AX,@DATA
;    MOV DS, AX
;    
;
;    INCLUDE C:\Users\AQIB\Desktop\REV.ASM
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP
;
;
;END MAIN        
