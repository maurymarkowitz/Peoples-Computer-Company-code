10 REM MULTIPLICATION DRILL PROGRAM,
11 PRINT"MULTIPLICATION PROGRAM...DO YOU WANT THE RULES?";
12 INPUT Z
13 IF Z="N" GO TO 50
20 PRINT"I WILL PRINT A NUMBER TIMES A NUMBER FOLLOWED BY"
30 PRINT"A QUESTION MARK..?..YOU TYPE IN THE CORRECT ANSWER"
40 PRINT"AFTER YOUR ANSWER TYPE IN A RETURN..I WILL THEN"
45 PRINT"TELL YOU IF YOUR ANSWER IS CORRECT OR NOT..."
46 PRINT"AFTER 10 QUESTIONS I WILL TELL YOU YOUR SCORE.."
50 REM CLEAR SCORING REGISTERS...
60 LET G=0
70 LET E=0
100 IF G+E=10 GO TO 700
110 IF G+E=20 GO TO 700
120 IF G+E=30 GO TO 700
130 IF G+E=40 GO TO 700
140 IF G+E=50 GO TO 700
150 IF C<>A*B GO TO 300
200 REM GENERATE RANDOM A AND B
210 LET A=RND(10)+1
220 LET B=RND(10)
300 REM PRINT PROBLEM AND REQUEST ANSWER
310 PR A;"X";B;"=";
320 INPUT C
400 REM IS ANSWER CORRECT?
410 IF C=A*B GO TO 600
500 REM ANSWER IS WRONG
510 PR"YOU GOOFED..TRY AGAIN.",
520 LET E=E+1
530 GO TO 100
600 REM ANSWER IS CORRECT..PRINT RAND, COMMENDATION
610 LET G=G+1
620 LET R=RND(5)+1
625 IF R=1 GO TO 650
630 IF R=2 GO TO 660
635 IF R=3 GO TO 670
640 IF R=4 GO TO 680
645 IF R=5 GO TO 690
650 PR"RIGHT ON...."
655 GO TO 100
670 PR"GOOD WORK....."
675 GO TO 100
680 PR"KEEP IT UP...."
685 GO TO 100
690 PR"EXCELLENT...."
695 GO TO 100
700 REM OUTPUT SCORE
710 PR"YOUR SCORE NOW IS";G;"CORRECT AND";E;"ERRORS(S)"
720 IF G+E=50 GO TO 800
730 PR"DO YOU WANT TO CONTINUE..";
740 INPUT Z
750 IF Z=Y GO TO 900
800 PR"THANK YOU FOR PLAYING WITH ME..HAVE A NICE DAY.."
810 PR"IF YOU WANT TO PLAY AGAIN TYPE..RUN..&..RETURN.."
899 END
900 REM PLAYER WANTS TO CONTINUE LESS THAN 50 QUESTIONS
910 IF C-A*B GO TO 200
920 PR"I DIDN'T FORGET YOU MISSED THIS ONE.."
930 GO TO 300
999 END