100 REM *** NUMBER *** A NUMBER GUESSING GAME ***
110 rem *** copyright people's computer company
120 rem *** p. o. box 310, menlo park ca 94025
200 REM *** PRINT INSTRUCTIONS ON HOW TO PLAY
210 PRINT "I WILL THINK OF A WHOLE NUMBER from 1 AND 100."
220 PRINT "TRY TO GUESS MY NUMBER. AFTER EACH GUESS, I WILL"
230 PRINT "TELL YOU IF YOU HAVE GUESSED MY NUMBER OF IF YOUR"
240 PRINT "GUESS IS TOO SMALL OR TOO BIG."
300 REM *** COMPUTER 'THINGS' OF A NUMBER - CALL IT X
310 LET X=INT(100*RND(0))+1
320 PRINT
330 PRINT "OK, I HAVE A NUMBER. START GUESSING."
400 REM *** HUMAN STARTS GUESSING
410 PRINT
420 PRINT "WHAT IS YOUR GUESS";
430 INPUT G
440 IF G=X THEN 500
450 IF G>X THEN 480
460 PRINT "TOO SMALL. TRY A LARGER NUMBER."
470 GO TO 410
480 PRINT "TOO BIG. TRY A SMALLER NUMBER."
490 GO TO 410
500 REM *** HUMAN HAS GUESSED THE COMPUTER'S NUMBER
510 PRINT
520 PRINT "YOU GOT IT! LET'S PLAY AGAIN.
530 PRINT
540 GO TO 300
999 END