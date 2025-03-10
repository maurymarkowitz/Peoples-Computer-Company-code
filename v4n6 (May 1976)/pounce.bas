100 ' NAME:  ELEMLIB***:POUNCE
110 '
120 ' BY:  MAC OGLESBY ON 01/28/76.
130 '
140 ' DESCRIPTION:  LOOK! LOOK! SEE THE CAT JUMP OVER THE MOUSE?
150 '   POUNCE IS A GAME INVOLVING THE CONCEPTS OF SCALE AND
160 '   ESTIMATION BUT REQUIRING ONLY SIMPLE READING SKILLS.
170 '
180 ' INSTRUCTIONS:  TYPE "RUN" TO PLAY.
190 '
200 '
1000 LIBRARY "BASICLIB***:QUESTION"
1010 'DELETE QUESTION MARK
1020 CALL "QUESTION":0
1030
1040 RANDOMIZE
1050 LET A1=1                          'REPLAY RETURNS TO HERE
1060 LET C1=T1=1
1070 LET C$(1)=C$(2)=""
1080 LET S1=1+INT(RND*5)               'SET THE SCALE (LENGTH OF CAT)
1090 LET N1=INT(78/S1)                 'MAX. ALLOWABLE INPUT FOR POUNCE
1100 LET L1=S1*(INT(20/S1)+INT(RND*(50/S1)))  'DISTANCE, CAT TO MOUSE
1110 FOR J1=1 TO S1
1120    LET C$(1)=C$(1)&":"            'GENERATE CAT, MOUSE SYMBOLS
1130    LET C$(2)=C$(2)&"#"
1140 NEXT J1
1150
1160 'PRINT THE BOARD
1170 PRINT
1180 PRINT C$(2);" = CAT"
1190 PRINT C$(1);" = MOUSE"
1200 PRINT
1210 PRINT TAB(C1);C$(A1);TAB(C1+L1);C$(3-A1)
1220 PRINT
1230
1240 'HAS MOUSE SPOTTED CAT?
1250 IF LI>S1*(-3+INT(RND*6)) THEN 1380
1260    PRINT "OH! OH! THE MOUSE SEES THE CAT!"
1270    PRINT "  RUN, MOUSE, RUN!"
1280    IF RND>.2 THEN 1330
1290       PRINT "LOOK! LOOK! THE MOUSE RAN INTO ITS HOLE!"
1300       PRINT
1310       PRINT "WELL, THAT ONE GOT AWAY..."
1320       GOTO 1680
1330    LET LI=S1*(9-S1+INT(RND*(18-2*S1)))
1340    LET CI=0
1350    LET A1=3-A1
1360    GOTO 1200
1370
1380 PRINT "POUNCE!! ";CHR$(10);
1390 LINPUT A$
1400 IF (LEN(A$)-2)*(LEN(A$)-1)<>0 THEN 1820
1410    CHANGE A$ TO A
1420    FOR J1=1 TO A(0) 
1430       'CHECK FOR DIGITS
1440       IF (57-A(J1))*(A(J1)-48)=>0 THEN 1460
1450          GOTO 1820
1460    NEXT J1
1470    IF A(0)=2 THEN 1500
1480       LET P1=A(1)-48
1490       GOTO 1520
1500    LET P1=10*(A(1)-48)+(A(2)-48)
1510    IF P1>N1 THEN 1820
1520       LET P1=P1*S1                'POUNCE - INPUT X CAT'S LENGTH
1530       LET T1=T1+1                 'COUNT POUNCES
1540
1550       ON SGN(LI-P1)+2 GOTO 1580,1640,1770
1560
1570       'JUMPED OVER MOUSE
1580       LET LI=P1-LI
1590       LET CI=0
1600       LET A1=3-A1
1610       GOTO 1200
1620
1630       'CAUGHT MOUSE
1640       PRINT "*** YOU'VE CAUGHT THE MOUSE WITH";T1;"POUNCE";
1650       IF T1=1 THEN 1670
1660          PRINT "S";
1670       PRINT "!!"
1680       PRINT "WANT TO CHASE ANOTHER MOUSE? ";
1690       LINPUT A$
1700       LET A$=SEG$(A$,1,1)
1710       CHANGE A$ TO A
1720       IF (121-A(1))*(89-A(1))<>0 THEN 1740
1730          GOTO 1050
1740       STOP
1750
1760      'POUNCE FELL SHORT
1770      IF A1=1 THEN 1790
1780         LET CI=CI+P1
1790      LET LI=LI-P1
1800      GOTO 1200
1810
1820 PRINT "TO POUNCE, JUST TYPE A WHOLE NUMBER FROM 1 TO ";STR$(N1);"."
1830 PRINT
1840 GOTO 1380
1850
1860 END