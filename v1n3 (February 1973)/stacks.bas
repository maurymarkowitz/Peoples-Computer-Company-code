10 REM *** DEFINITION OF A STACK ***
20 DIM S(1)
30 LET T1=10
40 LET T=0
100 PRINT "TYPE 0 TO PUTSH, 1 TO POP";
110 INPUT X
120 IF X=1 THEN 170
130 PRINT "WHAT NUMBER";
140 INPUT N
150 GOSUB 1000
160 GO TO 180
170 GOSUB 1500
180 FOR I=1 TO T
190 PRINT S(I);
200 NEXT I
210 PRINT
220 GO TO 100
1000 REM *** PUSH ***
1010 IF T<T1 THEN 1050
1020 PRINT "STACK IS FULL."
1030 STOP
1040 LET T=T+1
1050 LET S(T)=N
1060 RETURN
1500 REM *** POP ***
1510 IF T>0 THEN 1540
1520 PRINT "STACK IS EMPTY."
1530 STOP
1540 LET N=S(T)
1550 LET T=T-1
1560 RETURN
2000 END