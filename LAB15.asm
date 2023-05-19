;                                                   ;QUESTION#1
;.MODEL SMALL
;.STACK 100H
;.DATA
;   M1 DB 0AH,0DH, "ENTER FIRST NUMBER: $"
;   M2 DB 0AH,0DH, "ENTER SECOND NUMBER:$"
;   M3 DB 0AH,0DH,"ADDITION:$"  
;.CODE 
;MAIN PROC
;    MOV AX, @DATA
;    MOV DS, AX
;    
;    MOV AH, 9
;    LEA DX, M1
;    INT 21H
;  CALL DECIN
;    PUSH AX
;    
;    MOV AH, 9
;    LEA DX, M2
;    INT 21H
;  CALL DECIN
;    PUSH AX  
;    
;    MOV AH,9
;    LEA DX,M3
;    INT 21H
;    POP AX
;    POP BX
;    
;    ADD AX,BX
;  CALL DECOUT  
;    
;    MOV AH, 4CH
;    INT 21H
;    MAIN ENDP 
;INCLUDE  INCLUDE C:\Users\AQIB\Desktop\InputOutput.txt
;END MAIN
;                                             
                                             
;                                                  ;QUESTION#2 
;.MODEL SMALL
;.STACK 100H
;.DATA
;M1 DB "ENTER A NUMBER:$"
;M2 DB 0AH,0DH,"AREA OF SQUARE :$"
;.CODE  
;MAIN PROC
;  MOV AX, @DATA
;    MOV DS, AX
;    
;    MOV AH, 9
;    LEA DX, M1
;    INT 21H
;  CALL DECIN
;    PUSH AX
;    
;    MOV AH,9
;    LEA DX,M2
;    INT 21H
;    
;    POP AX
;    MUL AX
;   CALL DECOUT
;  
;    MOV AH, 4CH
;    INT 21H
;    MAIN ENDP 
;INCLUDE C:\Users\AQIB\Desktop\InputOutput.txt
;END MAIN    
;
  ;                                                ;QUESTION   3
;.MODEL SMALL
;.STACK 100H
;.DATA
;   M1 DB 0AH,0DH, "ENTER LENGTH: $"
;   M2 DB 0AH,0DH, "ENTER WIDTH:$"
;   M3 DB 0AH,0DH,"AREA OF RECTANGLE:$"  
;.CODE 
;MAIN PROC
;    MOV AX, @DATA
;    MOV DS, AX
;    
;    MOV AH, 9
;    LEA DX, M1
;    INT 21H
;  CALL DECIN
;    PUSH AX
;    
;    MOV AH, 9
;    LEA DX, M2
;    INT 21H
;  CALL DECIN
;    PUSH AX  
;    
;    MOV AH,9
;    LEA DX,M3
;    INT 21H
;    POP AX
;    POP BX
;    
;    MUL BX
;  CALL DECOUT  
;    
;    MOV AH, 4CH
;    INT 21H
;    MAIN ENDP 
;INCLUDE C:\Users\AQIB\Desktop\InputOutput.txt
;END MAIN     

.MODEL SMALL
.STACK 100H
.DATA
   M1 DB 0AH,0DH, "ENTER LENGTH: $"
   M2 DB 0AH,0DH, "ENTER WIDTH:$"
   M3 DB 0AH,0DH,"AREA OF TRIANGLE:$"  
.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, M1
    INT 21H
  CALL DECIN
    PUSH AX
    
    MOV AH, 9
    LEA DX, M2
    INT 21H
  CALL DECIN
    PUSH AX  
    
    MOV AH,9
    LEA DX,M3
    INT 21H
    POP AX
    POP BX
    
    MOV CL,2
    MUL BX 
    DIV CL
  CALL DECOUT  
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP 
  INCLUDE C:\Users\AQIB\Desktop\InputOutput.txt
END MAIN
