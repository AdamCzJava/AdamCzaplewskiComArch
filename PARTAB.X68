*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    MOVE.W (HEALTH), A2  ;moving the value from the variable Health ($10-hex) into the address register 2
    MOVE.B #5,  D1       ;moving litteral, number 5 into the data register 1
    ADD D1, D2           ;adding registers 1 and 2
    MOVE.B D2, (A2)      ;moving the value from register 2 into the address memory 2
    MOVE.B (A2), D5      ;moving value from A2 into the data register 5
    SUB #5, D2           ;substarcting 5 from D2
    MOVE.B D2, (A2)      ;moving the value from D2 into the A2
    MOVE.B (A2), D5      ;moving the value from A2 into the D5
    MULU #2, D2          ;multipling D2 by number 2
    MOVE.B D2, (A2)      ;moving D2 into the value on A2
    MOVE.B (A2), D5      ;moving A2 into the D5
    DIVU #2, D2          ;dividing D2 by 2
    MOVE.B D2, (A2)      ;moving D2 into the A2
    MOVE.B (A2), D5      ;moving A2 value into the D5

    SIMHALT             ; halt simulator

HEALTH dc.w $10

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
