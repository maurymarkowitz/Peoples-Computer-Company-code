100 REM *** MUGWUMP - A HIDE AND SEEK GAME
110 REM *** PEOPLE'S COMPUTER COMPANY, MENLO PARK CA
120 RANDOM
140 LET G=10
150 LET H=5
160 PRINT "DO YOU WANT THE RULES (1=YES. 0=NO)";
170 INPUT Z
180 IF Z <> 1 THEN 350
190 REM *** RULES IN LINES 200 THRU 330
200 PRINT "A MUGWUMP IS HIDING IN A";G;"BY";G;"GRID. TRY TO"
210 PRINT "FIND HIM BY GUESSING HIS GRIDPOINT. HOMEBASE IS"
220 PRINT "GRIDPOINTS  0.0  AND A GUESS IS A PAIR OF WHOLE"
230 PRINT "NUMBERS (0 TO";G-1;") SEPARATED BY A COMMA. THE FIRST"
240 PRINT "NUMBER IS THE DISTANCE TO THE RIGHT OF HOMEBASE"
250 PRINT "AND THE SECOND NUMBER IS THE DISTANCE ABOVE THE"
260 PRINT "HOMEBASE. FOR EXAMPLE, IF YOU THINK THE MUGWUMP"
270 PRINT "IS HIDING 8 UNITS TO THE RIGHT OF HOMEBASE AND"
280 PRINT "3 UNITS ABOVE HOMEBASE, THEN ENTER  8,3  AS YOUR"
290 "GUESS AND PRESS THE 'RETURN' KEY."
300 PRINT
310 PRINT "YOU GET";M;"GUESSES. AFTER EACH GUESS, I WILL"
320 PRINT "TELL YOU HOW FAR (IN A DIRECT LINE) YOU ARE FROM"
330 PRINT "THE MUGWUMP. "
340 REM *** HIDE MUGWUP AT RANDOM GRIDPOINT  A,B
350 LET A=INT(G*RND(0))
360 LET B=INT(G*RND(0))
370 PRINT
380 PRINT "MUGWUMP IS HIDING. YOU GET";N;"GUESSES."
390 REM *** N GUESS ALLOWED - LINES 400 THRU 560
400 FOR T=1 TO N
410 PRINT
420 PRINT "WHAT IS YOUR GUESS";
430 INPUT X,Y
440 REM *** IF MUGWUMP NOT FOUND GO TO LINE 500
450 IF X <> A THEN 520
460 IF Y <> B THEN 520
470 PRINT "YOUR FOUND HIM IN";T;"GUESSES!!!"
480 PRINT "LET'S PLAY AGAIN."
490 PRINT
500 GOTO 350
510 REM *** D=STRAIGHTLINE DISTANCE TO MUGWUMP
520 LET D=SQR((X-1)^2+(Y-B)^2)
530 REM *** THEN WE ROUND D TO ONE DECIMAL PLACE
540 LET D=INT(10*D)/10
550 PRINT "YOU ARE";D;"UNITS FROM THE MUGWUMP."
560 NEXT T
570 REM *** MUGWUMP NOT FOUND IN N GUESSES
580 PRINT
590 PRINT "SORRY, THAT'S";N;"TRIES."
600 PRINT "MUGWUMP IS AT GRIDPOINT ";A;",";B
610 PRINT "LET'S PLAY AGAIN."
620 PRINT
630 GOTO 350
640 END