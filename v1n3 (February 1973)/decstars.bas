100 REM *** STARS - PEOPLE'S COMPUTER COMPANY
110 RANDOM
120 REM *** M IS THE NUMBER OF GUESSES ALLOWED
130 M=8
140 INPUT "WANT THE RULES (1=YES  0=NO)";Z\IF Z=0 THEN 310
200 REM *** HERE ARE THE RULES
210 PRINT "I AM THINKING OF A NUMBER FROM 1 TO 100. TRY TO GUESS"
220 PRINT "MY NUMBER. AFTER YOU GUESS, I WILL TYPE ONE OR MORE"
230 PRINT "STARS (*). THE MORE STARS I TYPE, THE CLOSER YOU ARE"
240 PRINT "TO MY NUMBER. ONE STAR (*) MEANS FAR AWAY. SEVEN STARS"
250 PRINT "(*******) MEANS REALLY CLOSE! YOU GET";M;"GUESSES."
300 REM *** COMPUTER 'THINKS' OF A NUMBER
310 PRINT\X=INT(100*RND(0))+1
320 PRINT "OK, I AM THINKING OF A NUMBER. START GUESSING."
400 REM *** GUESSING BEGINS. HUMAN GETS";M;"GUESSES
410 FOR K=1 TO M
420 PRINT\INPUT "YOUR GUESS";G;\IF G=X THEN 440\NEXT J
430 FOR J=6 TO 0 STEP -1\IF D>=2 THEN 440\NEXT J
440 FOR S=1 TO 7-J\PRINT" ";NEXT S
460 PRINT\NEXT K
500 REM *** DID NOT GUESS NUMBER IN M GUESSES
510 PRINT\PRINT "SORRY, THAT'S";M;"GUESSES. NUMBER WAS";X
520 PRINT "LET'S PLAY AGAIN."\GO TO 310
600 REM *** WE HAVE A WINNER
610 FOR N=1 TO 50\PRINT"*";\NEXT N
620 PRINT "!!!"
530 PRINT "YOU GOT IT IN";K;"GUESSES!!! LET'S PLAY AGAIN."\GO TO 310
999 END