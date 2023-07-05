;.MODEL SMALL
;.STACK 100H
;.DATA
;    M1 DB "ENTER NUMBER $"  
;    M2 DB 0AH, "YOU ENTERED $"
;    STU DW 5 DUP(?)         
;.CODE
;MAIN PROC
;    MOV AX, @DATA
;    MOV DS,AX
;    
;    MOV AH,9
;    LEA DX,M1
;    INT 21H
;    
;    MOV CX,5
;    LEA SI,STU
;    
;INP:
;    CALL DECIN
;    MOV [SI],AX
;    INC SI
;    INC SI
;    
;    LOOP INP
;    
;    MOV AX,9
;    LEA DX,M2
;    INT 21H
;    
;    MOV CX,5
;    LEA SI,STU
;    
;DISP:
;    MOV AX, [SI]
;    CALL DECOUT
;    
;    INC SI
;    INC SI
;    
;    LOOP DISP
;    
;    MOV AH,4CH
;    INT 21H
;    MAIN ENDP 
;        INCLUDE C:\Users\AQIB\Desktop\InputOutput.txt
;
;END MAIN
;
;
;
;



;
;.MODEL SMALL 
;.STACK 100H
;.DATA
;    ARRAY1 DB 2, 4, 6, 8, 10
;    ARRAY2 DB 1, 3, 5, 7, 9
;    RESULT DB 5 DUP(?)
;.CODE
;MAIN PROC
;    
;    MOV AX, @DATA 
;    MOV DS, AX 
;
;    MOV BX, OFFSET ARRAY1 
;    MOV CX, 1
;    LENGTHOF ARRAY1
;    MOV SI, OFFSET ARRAY2
;    MOV DI, OFFSET RESULT 
;ADD_ARRAYS:
;        MOV AL, [BX]
;        ADD AL, [SI] 
;        MOV [DI], AL 
;        INC BX 
;        INC SI
;        INC DI 
;        LOOP ADD_ARRAYS 
;    MOV BH, 0 
;    MOV BL, LENGTHOF RESULT 
;    MOV DI, OFFSET RESULT 
;PRINT_ARRAY: 
;        MOV DL, [DI] 
;        ADD DL, 30H 
;        MOV AH, 2 
;        INT 21H 
;        INC DI 
;        LOOP PRINT_ARRAY 
;    MOV AH, 4CH 
;    INT 21H
;MAIN ENDP
;END MAIN     












.MODEL SMALL
.STACK 100H
.DATA
    ARRAY DB 10 DUP(?) 
    COUNT DB 10 
    MSG DB 'ENTER ARRAY ELEMENTS: $' 
    SUM DB 13,10,'SUM IS  $'


.CODE
MAIN PROC
    MOV AX, @DATA 
    MOV DS, AX
    
    
    MOV DX, OFFSET MSG
    MOV AH, 9
    INT 21H
    
    
    MOV CL, COUNT 
    MOV SI, OFFSET ARRAY 
    MOV SUM, 0
     
LOOPSTART:

    MOV AH, 1 
    INT 21H    
    
    CMP AL, 13 
    JE LOOPEND
    
     
    SUB AL, '0' 
    MOV [SI], AL 
    ADD SUM, AL 
    INC SI 
    DEC CL 
    JNZ LOOPSTART  
    
LOOPEND:

 
    MOV AH, 9
    MOV DX, OFFSET SUM
    INT 21H
    
    
    MOV AH, 4CH
    MOV AL, 0
    INT 21H
MAIN ENDP
END MAIN
 

