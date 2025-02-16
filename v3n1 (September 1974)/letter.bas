100 REM *** LETTER - A LETTER GUESSING GAME
110 DIM A$(26)
120 LET A$="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
200 REM *** PRINT INSTRUCTIONS ON HOW TO PLAY
210 PRINT "I WILL THINK OF A LETTER OF THE ALPHABET, A TO Z."
220 PRINT "TRY TO GUESS MY LETTER. AFTER EACH GUESS, I WILL"
230 PRINT "TELL YOU IF YOU GUESS MY LETTER OF IF YOUR GUESS"
240 PRINT "IS TOO HIGH OR TOO LOW. THE LOWEST LETTER IS 'A'"
250 PRINT "AND THE HIGHEST LETTER IS 'Z'."
300 REM *** COMPUTER THINKS OF A LETTER
310 LET X-INT(26*RND(0))+1
320 LET L$=A$[X,X]
330 PRINT
340 PRINT "OK, I HAVE A LETTER.  START GUESSING."
400 REM *** HUMAN STARTS GUESSING
410 PRINT
420 PRINT "WHAT IS YOUR GUESS";
430 INPUT G$
440 IF G$=L$ THEN 500
450 IF G$>L$ THEN 480
460 PRINT "TOO LOW. TRY A HIGHER LETTER."
470 GOTO 410
480 PRINT "TOO HIGH. TRY A LOWER LETTER."
500 REM *** HUMAN HAS GUESSED THE COMPUTER'S LETTER
510 PRINT
520 PRINT "YOU GOT IT! LET'S PLAY AGAIN."
530 PRINT
540 GOTO 300
999 END