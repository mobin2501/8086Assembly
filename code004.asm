.MODEL SMALL
.STACK 100H
.DATA 
NUM1 DB 3H
NUM2 DB 5H
NUM3 DB 4H

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AL,NUM1
    CMP AL, NUM2
    JG GREATER
    
    MOV AL,NUM2
    CMP AL,NUM3
    JG GREATER2
    
    MOV AL,NUM3
    JMP GREATER2
    
    GREATER:
    CMP AL,NUM3
    JG GREATER2
    
    GREATER2:
    MOV BL,AL
    ADD BL,30H
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    
    
MAIN ENDP