*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
       
    ;TRAP 2
    MOVE.W #33444, A1
    MOVE.B #2, D0
    TRAP #15
    MOVE.B #3, D0
    TRAP #15
    
    ;TRAP 5
    MOVE.B #5, D0
    TRAP #15
    MOVE.B #6, D0
    TRAP #15
    
    
    ;TRAP 8
    MOVE.L #8, D0
    TRAP #15
    MOVE.B #3, D0
    TRAP #15
    
    ;TRAP 13
    LEA text, A1
    MOVE.B #13, D0
    TRAP #15
    
   
    ;TRAP 17
    LEA text, A1
    MOVE.B #17, D1
    MOVE.B #17, D0
    TRAP #15
    
    ;TRAP 18
    LEA text, A1
    MOVE.B #18, D0
    TRAP #15
    
    
        
    
    
    

    SIMHALT             ; halt simulator

text dc.b 'Hi Assembler', 0

    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
