.MODEL
.STACK 0000000100000000B
.DATA
                                                                   
       
       Val DB  00001010B,00001101B ,01001101B,01011001B, 00100000B, 0000000001001110B,0000000001000001B,01001101B,0000000001000101B, 00100000B,01001001B,01010011B, 00100000B,00100100B   
       Value DB 10D, 13D, 65D, 81D ,73D, 66D ,36D,    
       
       ;01000001B,01010001B,01001001B,01000010B,///AQIB 
       
       
       
.CODE
MAIN PROC                                                                                                                                                                                                                                                             
    
    MOV AX, @DATA
    MOV DS, AX             
 
    
    MOV AH,00001001B
    LEA DX, Val
    INT 00100001B
                
    MOV AH,9
    LEA DX, Value
    INT 33D            
         
    
    MOV AH, 00100001B
    INT 00100001B
    MAIN ENDP    

END MAIN