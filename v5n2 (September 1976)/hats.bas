10 !THIS PART GENERATES RANDOM NUMBERS
20 R=INT(10*RND(-1))+2
30 S=INT(10*RND)+2
40 T=INT(10*RND)+2
50 U=INT(10*RND)+2
60 V=INT(10*RND)+2
70 W=INT(10*RND)+2
80 X=INT(10*RND)+2
90 Y=INT(10*RND)+2
95 Z=INT(10*RND)+2
100 REM  "HATS" GAME PROVIDED BY FRANZ ARMBRUSTER FOR SCIENCE
110 REM  EXCHANGE CLUB USE. SBA PROGRAM BY HI LORENZEN.
120 PRINT IN FORM "///"
130 PRINT "                    **************"
150 PRINT "                    *            *"
160 PRINT "                    *    HATS    *"
180 PRINT "                    *            *"
200 PRINT "                    ()()()()()()()"
220 PRINT "                    *            *"
230 PRINT "             HIHIHIHIHIHIHIHIHIHIIHIHIH"
240 PRINT
250 PRINT "WOULD YOU LIKE THE INSTRUCTIONS";
260 INPUT A
270 IF LEFT(A,1)="N" THEN 393
280 PRINT
290 PRINT "THIS GAME WAS USED BY FRANZ ARMBRUSTER IN HIS MATH"
300 PRINT "CLASSES. HE USED DIFFERENT HATS TO IDENTIFY THE 'EASY'."
310 PRINT "' MEDIUM',AND 'HARD' PROBLEMS."
320 PRINT "SEE IF YOU CAN FIGURE OUT THE FORMULA THE COMPUTER"
330 PRINT "USES TO PROVIDE EACH ANSWER."
340 PRINT "W E WILL START WITH AN EASY ONE."
350 PRINT "ALL YOU HAVE TO DO IS CHOOSE AN NUMBER."
360 PRINT "THE COMPUTER WILL USE YOUR NUMBER TO COME UP WITH THE"
370 PRINT "ANSWER."
380 PRINT "IF YOU THINK YOU KNOW THE SECRET, TYPE 'GOTCHA'."
390 PRINT "IF YOU WANT TO GET OUT OF THE GAME, TYPE 'QUIT'."
391 PRINT "THIS GAME HAS VARIOUS DEGREES OF  DIFFICULTY,YOU MAY"
392 PRINT "CHOOSE TO ENTER AT ANY LEVEL YOU WISH."
393 PRINT "TYPE 1,2,3,4,OR 5 FOR YOU CHOICE.";
394 INPUT C
395 PRINT
396 IF C = 2 THEN 650
397 IF C = 3 THEN 870
398 IF C = 4 THEN 1070
399 IF C= 5 THEN 1290
400 R=INT(10*RND(-1))+2
420 PRINT "WHAT NUMBER DO YOU CHOOSE";
430 INPUT N
440 IF N = "QUIT" THEN 2060
450 IF N = "GOTCHA" THE 480
460 PRINT R*N
470 GOTO 420
480 PRINT
490 PRINT "SO, YOU THINK YOU'VE FIGURED ME OUT."
500 PRINT "IF YOU REALLY HAVE GOT ME, YOU WILL KNOW THE "
510 PRINT "CORRECT ANSWERS."
520 PRINT "TO TEST YOU, I WILL GIVE YOU A NUMBER."
530 S=INT(10*RND)+2
540 PRINT "MY NUMBER IS ";S;
550 PRINT "NOW IT'S YOUR TURN TO SUPPLY THE CORRECT ANSWER."
560 INPUT N
570 IF N=R*S THEN 600
580 PRINT "SORRY, TRY AGAIN."
590 GO TO 420
600 PRINT "YOU GOT ME. MY EQUATION WAS ";R;" TIMES N."
610 PRINT
620 PRINT "WOULD YOU LIKE TO TRY THE NEXT LEVEL OF DIFFICULTY.";
630 INPUT A
640 IF LEFT(A,1) = "N" THEN 2060
650 T=INT(RND)+2
670 PRINT "CHOOSE ANOTHER NUMBER";
680 INPUT N
690 IF N = "QUIT" THEN 2060
700 IF N = "GOTCHA" THEN 730
710 PRINT T*N+U
720 GO TO 670
730 PRINT
740 PRINT "OK. I GET TO TEST YOU AGAIN."
750 V=INT(RND)+2
760 PRINT "MY NUMBER IS ";V
770 PRINT "WHAT'S YOUR ANSWER";
780 INPUT N
790 IF N=T*V+U THEN 820
800 PRINT "SORRY, TRY AGAIN."
810 GOTO 670
820 PRINT "YOU GOT ME, THE EQUALITY WAS ";T" TIMES N PLUS ";U
830 PRINT
840 PRINT "HOW ABOUT TRYING THE NEXT LEVEL? 'YES' OR 'NO'.";
850 INPUT A
860 IF LEFT(A,1) = "N" THEN 2060
870 M=INT(10*RND)
875 W=INT(10*RND)+1
880 IF M=0 THEN 870
890 PRINT "CHOOSE ANOTHER NUMBER";
900 INPUT N
910 IF N = "QUIT" THEN 2060
920 IF N = "GOTCHA" THEN 950
930 PRINT N/2 +W
940 GOTO 890
950 PRINT
960 PRINT "HERE WE GO AGAIN."
970 A=M+INT(10*RND(0))
980 PRINT "MY NUMBER IS";A
990 PRINT "WHAT'S YOUR ANSWER.";
1000 INPUT N
1010 IF N=A/2 +W THEN 1031
1020 PRINT " SORRY, TRY AGAIN."
1030 GOTO 890
1031 PRINT
1032 PRINT "YOU'RE GETTING VERY CLEVER"
1033 PRINT "THE EQUATION WAS (N/2)+";W
1034 PRINT
1040 PRINT "ARE YOU READY FOR A TOUGH ONE";
1050 INPUT A
1060 IF LEFT(A,1) = "N" THEN 2060
1070 M=INT)10*RND)
1080 IF M=0 THEN 1070
1100 PRINT "CHOOSE ANOTHER NUMBER";
1110 INPUT N
1120 IF N = "QUIT" THEN 2060
1130 IF N = "GOTCHA" THEN 1170
1140 PRINT (N-M)*R
1150 GO TO 1100
1160 PRINT
1170 PRINT "HERE IS YOUR TEST"
1180 A=M*INT(10*RND(0))
1190 PRINT "MY NUMBER IS";A
1200 PRINT "WHAT IS YOUR ANSWER";
1210 INPUT N
1220 IF N = (A-M)*R THEN  1250
1230 PRINT "SORRY, TRY AGAIN."
1240 GOTO 1100
1250 PRINT "THE EQUATION WAS (N -";M")";R
1260 PRINT "HOW ABOUT ANOTHER ";
1270 INPUT A
1280 IF LEFT(A,1)="N" THEN 2060
1290 LET M=Y
1399 IF M=0 THEN 1290
1301 IF M=1 THEN 1290
1310 PRINT "YOUR MOVE, TIGER!";
1311 GO TO 1320
1315 PRINT "YOUR MOVE";
1320 INPUT N
1330 IF N="QUIT" THEN 2060
1340 IF N="GOTCHA" THEN 1390
1350 LET L=M*((N/M(-INT(N/M))
1360 PRINT L
1370 GO TO 1315
1380 PRINT
1385 LET C=INT(10*RND(-1))+2
1390 PRINT "MY NUMBER IS ";C;
1391 PRINT "WHAT'S YOUR RESPONSE";
1400 INPUT N
1410 IF N=M*((C/M)-INT(C/M)) THEN 1435
1420 PRINT "NICE TRY, BUT NOT CORRECT!"
1430 GO TO 1310
1435 FOR I=1 TO 10
1436 PRINT CHAR(103);
1437 NEXT I
1439 PRINT
1440 PRINT "FANTASTIC! MY FORMULA WAS TO DIVIDE BY ";M;"  BUT INSTEAD OF"
1450 PRINT "NAMING THE QUOTIENT, I NAMED THE REMAINDER--THIS IS THE SAME"
1460 PRINT "AS CONVERTING THE NUMBER TO ITS MODULO ";M;"  REPRESENTATION."
2050 PRINT "CONGRATULATIONS! YOU COMPLETED THE GAME."
2060 PRINT
2070 PRINT "IT'S BEEN FUN PLAYING 'HATS' WITH YOU."
2080 PRINT "HAVE A NICE DAY.    BYE."
2090 END
