; SUM, AVERAGE, MAX, MIN USING ARRAY 
.MODEL SMALL
.STACK 100H
.DATA
    M1 DB 0AH,0DH, "ENTER NUMBER IN ARRAY: $"
    M2 DB 0AH,0DH, "SUM OF ARRAY IS: $"   
    M3 DB 0AH,0DH, "AVERAGE OF ARRAY IS: $"
    M4 DB 0AH,0DH, "MAXIMUM NUMBER IN ARRAY IS: $"
    M5 DB 0AH,0DH, "MINIMUM NUMBER IN ARRAY IS: $"
    STU DW 5 DUP(?) 
.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV CX, 5
    LEA SI, STU
    
INP: 
  
    MOV AH, 9
    LEA DX, M1
    INT 21H
    
   
    CALL DECIN
    
    MOV [SI], AX 
    INC SI  
    INC SI
    LOOP INP
    
    
    MOV CX,5
    LEA SI, STU
    MOV AX, 0
    
SUM: 
    
    ADD AX, [SI]
    INC SI
    INC SI
    LOOP SUM 
    
    PUSH AX
    
    MOV AH, 9
    LEA DX, M2
    INT 21H
    
    POP AX
    
    CALL DECOUT    
    
    
     
AVERAGE: 
    
    MOV BL, 5
    DIV BL    
    
    PUSH AX
    
    MOV AH, 9
    LEA DX, M3
    INT 21H  
    
    POP AX
    
    CALL DECOUT  
    
    MOV CX, 5
    LEA SI, STU 
    MOV AX, 0    
    
MAX:
    CMP AX, [SI]
    JG SWAP
    
    MOV AX, [SI] 
    ADD SI, 2
    LOOP MAX
    
    JMP DISPLAY
    
SWAP:
    MOV BX, AX
    ADD SI, 2
    LOOP MAX
    
    MOV AX, BX
  
DISPLAY:
    PUSH AX
    
    MOV AH, 9
    LEA DX, M4
    INT 21H
    
    POP AX
    
    CALL DECOUT
      
    MOV CX, 5
    LEA SI, STU 
    MOV AX, [SI]    
    
MIN:
    CMP AX, [SI]
    JL SWAP2
    
    MOV AX, [SI] 
    ADD SI, 2
    LOOP MIN
    
    JMP DISPLAY2
    
SWAP2:
    MOV BX, AX
    ADD SI, 2
    LOOP MIN
    
    MOV AX, BX
  
DISPLAY2:
    PUSH AX
    
    MOV AH, 9
    LEA DX, M5
    INT 21H
    
    POP AX
    
    CALL DECOUT


    MOV AH, 4CH
    INT 21H
    MAIN ENDP

    INCLUDE C:\Users\AQIB\Desktop\InputOutput.txt

END MAIN 

      
 
 
 
     