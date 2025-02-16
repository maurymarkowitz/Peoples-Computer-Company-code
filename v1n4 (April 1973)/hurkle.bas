100 REM *** HURKLE - PEOPLE'S COMPUTER COMPANY, MENLO PARK, CA
110 RANDOM
120 REM *** N IS THE NUMBER OF GUESSES ALLOWED
130 LET N=5
140 PRINT "DO YOU WANT THE RULES (1=YES  0=NO)";
150 INPUT Z
160 IF Z <> 1 THEN 490
170 REM *** HERE ARE THE RULES
180 PRINT "A HURKLE IS HIDING IN A GRID, LIKE THE ONE BELOW."
190 PRINT
200 PRINT
210 PRINT TAB(26);"NORTH"
220 PRINT
230 FOR K=9 TO 0 STEP -1
240 IF K <> 4 THEN 270
250 PRINT TAB(8);"WEST    4";TAB(20);". . . . . . . . . .   EAST"
260 GOTO 280
270 PRINT TAB(14);K;TAB(20);". . . . . . . . . ."
280 NEXT K
290 PRINT
300 PRINT TAB(20);"0 1 2 3 4 5 6 7 8 9"
310 PRINT
320 PRINT TAB(26);"SOUTH"
330 PRINT
340 PRINT "TRY TO GUESS WHERE THE HUKLE IS HIDING. YOU GUESS"
350 PRINT "BY TELLING ME THE GRIDPOINT WHERE YOU THINK THAT"
360 PRINT "THE HURKLE IS HIDING. HOMEBASE IS POINT  0,0  IN"
370 PRINT "THE SOUTHWEST CORNER. YOUR GUESS SHOULD BE A PAIR"
380 PRINT "OF WHOLE NUMBERS, SEPARATED BY A COMMA. THE FIRST"
390 PRINT "NUMBER TELLS HOW FAR TO THE RIGHT OF HOMEBASE AND"
400 PRINT "THE SECOND NUMBER TELLS HOW FAR ABOVE HOMEBASE YOU"
410 PRINT "THINK THE HURKLE IS HIDING. FOR EXAMPLE, IF YOU "
420 PRINT "THINK THE HURKLE IS 7 TO THE THE RIGHT AND 5 ABOVE"
430 PRINT "HOMEBASE, YOU ENTER  7,5  AS YOUR GUESS AND THEN"
440 PRINT "PRESS THE 'RETURN' KEY. AFTER EACH GUESS, I WILL"
450 PRINT "TELL YOU THE APPROXIMATE DIRECTION TO GO FOR YOUR"
460 PRINT "NEXT GUESS. GOOD LUCK!"
470 PRINT
480 REM *** HURKLE 'PICKS' A GRIDPOINT AND HIDES
490 LET A=INT(10*RND(0))
500 LET B=INT(10*RND(0))
510 PRINT
520 PRINT "THE HURKLE IS HIDING -  YOU GET";N;"GUESSES TO FIND HIM."
530 PRINT
540 REM *** GET A GUESS AND PRINT INFO FOR PLAYER
550 FOR K=1 TO N
560 PRINT "WHAT IS YOUR GUESS";
570 INPUT X,Y
580 IF ABS(X-1)+ABS(Y-B)=0 THEN 710
590 REM *** GO TO INFO SUBROUTINE
600 GOSUB 760
610 PRINT
620 NEXT K
630 PRINT
640 REM *** HURKLE WAS NOT FOUND IN N GUESSES
650 PRINT "SORRY, THAT'S";N;"GUESSES."
660 PRINT "THE HURKLE IS AT ";A;",";B
670 PRINT
680 PRINT "LET'S PLAY AGAIN."
690 GOTO 490
700 REM *** HURKLE HAS BE FOUND!
710 PRINT
720 PRINT "YOU FOUND HIM IN"K;"GUESSES!!!"
730 PRINT "LET'S PLAY AGAIN."
740 GOTO 490
750 REM *** SUBROUTINE: PRINT INFORMATION FOR NEXT GUESS
760 PRINT "GO ";
770 IF Y=B THEN 820
780 IF Y<B THEN 810
790 PRINT "SOUTH";
800 GOTO 820
810 PRINT "NORTH";
820 IF X=A THEN 870
830 IF X<A THEN 860
840 PRINT "WEST";
850 GOTO 870
860 PRINT "EAST";
870 PRINT
880 RETURN
890 END