*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program

    LEA text, A1    #the memory location of the text variable will be placed into address register A1 
    MOVE #14, D0    #moving literal number 14 into the data register D0
    TRAP #15        #it looks on A1 and prints the string which is in that memory location A1
    MOVE #4, D0     #moving literal number 4 into the data register D0
    TRAP #15        #it looks on A1 and prints the string which is in that memory location A1
   ; MOVE #3, D0     #moving literal number 3 into the data register D0
   ; TRAP #15        #it looks on A1 and prints the string which is in that memory location A1
    MOVE.W D1, $2000 #moving word size value from data register 1 into the memory location 2000
    LEA text, A1    #the memory location of the text variable will be placed into address register A1
    MOVE #14,D0     #moving literal number 14 into the data register D0
    TRAP #15        #it looks on A1 and prints the string which is in that memory location A1
    MOVE #3, D0     #moving literal number 3 into the data register D0
    TRAP #15        #it looks on A1 and prints the string which is in that memory location A1
    
    SIMHALT             ; halt simulator

text dc.b 'Your points are: ',0 

    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
