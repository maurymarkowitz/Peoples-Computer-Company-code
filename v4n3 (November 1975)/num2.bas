100 REM *** NUMBER - A NUMBER GUESSING GAME (NUM02)
110 LET X=INT(100*RND(1))+1
120 PRINT
130 PRINT "I'M THINKING OF A WHOLE NUMBER FROM 1 TO 100."
140 PRINT "GUESS MY NUMBER!!!"
150 PRINT
160 PRINT "YOUR GUESS";
170 INPUT G
180 ON SGN(G-X)+2 GO TO 210,250,230
210 PRINT "TOO SMALL. TRY A BIGGER NUMBER."
220 GO TO 150
230 PRINT "TOO BIG. TRY A SMALLER NUMBER."
240 GO TO 150
250 PRINT "YOU GUESSED IT!!!! LET'S PLAY AGAIN."
260 GO TO 110
999 END