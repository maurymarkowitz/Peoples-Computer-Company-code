5 REM   ANDY FIRE PRINTS OUT AN IMAGE
10 DIM A(75)
20 A(1)=INT(RND(0)*2)
30 A(2)=INT(RND(0)*2)
40 A(3)=INT(RND(0)*2)
50 FOR B=4 TO 74
60 C=1
70 IF A(B-1)=0 THEN 90
80 C=C+4
90 IF A(B-2)=0 THEN 110
100 C=C+2
110 IF A(B-3)=0 THEN 130
120 C=C+1
130 D=RND(0)*10
140 IF C>D THEN 180
150 A(B)=0
160 PRINT " ";
170 GOTO 200
180 A(B)=1
190 PRINT "+";
200 NEXT B
210 GOTO 20
220 END