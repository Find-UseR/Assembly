 .STACK 100H
 
 .DATA
   PROMPT     DB  'Enter a HEX digit : $'
   DECIMAL    DB  'In Decimal digit it is : $'
   CONTINUE   DB  'Do you want to do it again : $'
   ILLEGAL    DB  'Illegal Character - Enter (0-9) or (A-F) : $'
   TERMINATE  DB  'You failed to enter a HEX DIGIT, press any key to exit. $'
   NEXT_LINE  DB  0DH,0AH,"$"
 
 .CODE
   MAIN PROC
     MOV AX, @DATA                ; initialize DS
     MOV DS, AX
 
@START_1:                         ; jump label
       MOV AH, 9                  ; set string output function
       LEA DX, PROMPT             ; load and display the string PROMPT
       INT 21H
 
@START_2:                         ; jump label
       MOV AH, 1                  ; read a character
       INT 21H
 
       MOV BL, AL                 ; save the character into BL
 
       CMP BL, "A"                ; compare BL with "A"
       JB @SINGAL_DIGIT           ; jump to label @SINGAL_DIGIT if BL<A
 
       CMP BL, "F"                ; compare BL with "F"
       JA @ILLEGAL_CHARACTER      ; jump to label @ILLEGAL_CHARACTER if BL>F
 
       JMP @GREATER_THAN_NINE     ; jump to label @GREATER_THAN_NINE
 
@SINGAL_DIGIT:                    ; jump label
       CMP BL, "0"                ; comapre BL with "0"
       JB @ILLEGAL_CHARACTER      ; jump to label @ILLEGAL_CHARACTER if BL<0
 
       CMP BL, "9"                ; compare BL with "9"
       JA @ILLEGAL_CHARACTER      ; jump to label #ILLEGAL_CHARACTER if BL>9
 
       JMP @LESS_THAN_TEN         ; jump to label @LESS_THAN_TEN
 
@ILLEGAL_CHARACTER:               ; jump label
       INC CL                     ; increment CL
 
       CMP CL, 3                  ; compare CL and 3
       JE @TERMINATE              ; jump to label @TERMINATE if CL=3  
 
       MOV AH, 9                  ; set string output function
 
       LEA DX, NEXT_LINE          ; load and display the string NEXT_LINE
       INT 21H
 
       LEA DX, ILLEGAL            ; load and display the string ILLEGAL
       INT 21H
 
       JMP @START_2               ; jump to label @START_2
 
@LESS_THAN_TEN:                   ; jump label
       MOV CL, 0                  ; move 0 to CL
       MOV AH, 9                  ; set string output function
 
       LEA DX, NEXT_LINE          ; load and display the string NEXT_LINE
       INT 21H
 
       LEA DX, DECIMAL            ; load and display the string DECIMAL
       INT 21H
 
       MOV AH, 2                  ; print the contents of BL
       MOV DL, BL
       INT 21H
 
       JMP @CONTINUE              ; jump to label @CONTINUE
 
@GREATER_THAN_NINE:               ; jump label
       MOV CL, 0                  ; move 0 to CL
       MOV AH, 9                  ; set string output function
 
       LEA DX, NEXT_LINE          ; load and display the string  NEXT_LINE
       INT 21H
 
       LEA DX, DECIMAL            ; load and display the string DECIMAL
       INT 21H
 
       MOV AH, 2                  ; display the digit 1
       MOV DL, 31H
       INT 21H
 
       SUB BL, 11H                ; subtract 11H from BL to find 2nd digit
 
       MOV DL, BL                 ; display the 2nd digit
       INT 21H
 
@CONTINUE:                        ; jump label
       MOV AH, 9                  ; set string output function
 
       LEA DX, NEXT_LINE          ; load and display the string NEXT_LINE
       INT 21H
       INT 21H
 
       LEA DX, CONTINUE           ; load and display the string CONTINUE
       INT 21H
 
       MOV AH, 1                  ; read a character
       INT 21H
 
       CMP AL, "y"                ; compare AL with "y"
       JE @JUMP                   ; jump to label @JUMP if AL=y
 
       CMP AL, "Y"                ; compare AL with "Y"
       JE @JUMP                   ; jump to label @JUMP if AL=Y
 
       JMP @END                   ; jump to label @END
 
@JUMP:                            ; jump label
       LEA DX, NEXT_LINE          ; load and display the string NEXT_LINE
       MOV AH, 9
       INT 21H
       INT 21H
 
       JMP @START_1               ; jump to label @START_1
 
@TERMINATE:                       ; jump label
       MOV AH, 9                  ; set string output function
 
       LEA DX, NEXT_LINE          ; load and display the string NEXT_LINE
       INT 21H
       INT 21H
 
       LEA DX, TERMINATE          ; load and display the string TERMINATE
       INT 21H
 
       MOV AH, 1                  ; read a character
       INT 21H
 
@END:                             ; jump label
 
     MOV AH, 4CH                  ; return control to DOS
     INT 21H
   MAIN ENDP
 END MAIN