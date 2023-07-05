.MODEL SMALL
.STACK 100H
.DATA
          
            DB 10, 13, '1) FOR CONVERT BINARY TO HEXA '
            DB 10, 13, '2) FOR CONVERT HEXA TO BINARY'
            DB 10, 13, '3) FOR EXIT', 10, 13, '$' 
            
            M1 DB 10,13, " YOU ENTERED $ "         

.CODE
MAIN PROC
        MOV AX, @DATA 
        MOV DS, AX
DISPMENU:
        MOV DX, OFFSET MENU
        MOV AH, 09H
        INT 21H  
        
        MOV AH, 01H 
        INT 21H  
        
         CMP AL, '1'
        JE GOHEXA 
        
        CMP AL, '2'
        JE GOBIN  
        
        CMP AL, '3'
        JE GOQUIT
     
        
        
 GOBIN:   
 
        XOR BX,BX
        MOV AX,1
        
 INPUT:
        INT 21H
        CMP AL,0DH
        JE END_INPUT
        
        SHL BX,1
        SUB AL,30H
        OR BL,AL
        JMP INPUT
        
END_INPUT: 
        MOV CX,16 
        
        MOV AH,9
        LEA DX,M1
        INT 21H
        
PRINT:
        MOV DL,BH
        SHR DL,1
        SHR DL,1
        SHR DL,1
        SHR DL,1
        
        CMP DL,9
        
        JLE DISPNUM
        ADD DL,37H
        
        JMP DISP  
        
DISPNUM:      
        ADD DL,30H
        
DISP: 
        INT 21H
        ROL BX,1
        ROL BX,1
        ROL BX,1
        ROL BX,1
        
        LOOP PRINT
        
        
        
GOHEXA:
 
       JMP DISPMENU
GOQUIT:
        MOV AL, 0 
        MOV AH, 4CH
        INT 21H 

         MAIN ENDP
END MAIN
         