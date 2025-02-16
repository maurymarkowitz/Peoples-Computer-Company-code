100 REM *** REVERSE - A GAME OF SKILL
110 REM *** PEOPLE'S COMPUTER COMPANY, MENLO PARK CA
120 RANDOM
130 DIM A(20)
140 REM *** N = NUMBER OF NUMBERS (1 THRU N)
150 LET N=9
160 PEING "DO YOU WANT THE RULES (1=YES  0=NO)";
170 INPUT A
180 IF A=0 THEN 210
190 GOSUB 710
200 REM *** MAKE A RANDOM LIST A(1) TO A(N)
210 LET A(Q)=INT((N-1)*RND(0))+2
220 FOR K=2 TO N
230 LET A(K)=INT(N*RND(0))+1
240 FOR J=1 TO K-1
250 IF A(K)=A(J) THEN 230
260 NEXT J
270 NEXT K
280 REM *** PRINT ORIGINAL LIST AND START GAME
290 PRINT
300 PRINT "HERE WE GO ... THE LIST IS:"
310 LET T=0
320 GOSUB 610
330 PRINT "HOW MANY SHALL I REVERSE";
340 INPUT R
350 IF R=0 THEN 520
360 IF R<=N THEN 390
370 PRINT "OOPS! TOO MANY - I CAN REVERSE AT MOST";N
380 GO TO 330
390 LET T=T+1
400 REM ** REVERSE R NUMBERS AND PRINT NEW LIST
410 FOR K=1 TO INT(R/2)
420 LET Z=A(K)
430 LET A(K)=A(R=K+1)
440 LET A(R-K+1)=Z
450 NEXT K
460 GOSUB 610
470 REM *** CHECK FOR A WIN
480 FOR K=1 TO N
490 IF A(K)<>K THEN 330
500 NEXT K
510 PRINT "YOU WON IN";T;"MOVES!!!"
520 PRINT
530 PRINT "AGAIN (1=YES  0=NO)";
540 INPUT A
550 IF A<>0 THEN 210
560 STOP
600 REM *** SUBROUTINE *** PRINT LIST A(1) TO A(N)
610 PRINT
620 FOR K=1 TO N
630 PRINT A(K);
640 NEXT K
650 PRINT
660 PRINT
670 RETURN
700 REM *** SUBROUTINE *** PRINT THE RULES
710 PRINT
720 PRINT "THIS IS THE GAME OF 'REVERSE'. TO WIN, ALL YOU HAVE"
730 PRINT "TO DO IS ARRANGE THE LIST OF NUMBERS (1 THROUGH";N;")"
740 PRINT "IN NUMERICAL ORDER FROM LEFT TO RIGHT. TO MOVE, YOU"
750 PRINT "TELL ME HOW MANY NUMBERS (COUNTING FROM THE LEFT) TO"
760 PRINT "REVERSE. FOR EXAMPLE, IF THE CURRENT LIST IS:"
770 PRINT
780 PRINT " 2 3 4 5 1 6 7 8 9"
790 PRINT
800 PRINT "AND YOU REVERSE 4, THE RESULT WILL BE:"
810 PRINT
820 PRINT " 5 4 3 2 1 6 7 8 9"
830 PRINT
840 PRINT "NOW, IF YOU REVERSE 5, YOU WIN!"
850 PRINT
860 PRINT " 1 2 3 4 5 6 7 8 9"
870 PRINT
880 PRINT "NO DOUBT YOU WILL LIKE THIS GAME OF SKILL, BUT"
890 PRINT "IF YOU WANT TO QUIT, REVERSE 0 (ZERO)."
900 PRINT
910 RETURN
999 END