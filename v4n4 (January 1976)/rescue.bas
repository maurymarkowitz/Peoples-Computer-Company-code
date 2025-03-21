100 ' NAME:  RESCUE***
105 '
110 ' BY:  MAC OGLESBY ON 05/19/75
115 '
120 ' DESCRIPTION:  AS COMMANDER OF A RESCUE STARSHIP, THE USER SETS
125 '   OUT IN RESPONSE TO A DISTRESS CALL FROM THE STARSHIP KIEWIT.
130 '   THE PASSENGERS AND CREW CAN BE SAVED FROM CERTAIN DEATH IF
135 '   THE STARSHIP KIEWIT IS REACHED WITHIN A DOZEN MOVES.  CERTAIN
140 '   FACTORS COMPLICATE RESCUE EFFORTS.
145 '
150 ' INSTRUCTIONS:  TYPE "RUN" FOR COMPLETE INSTRUCTIONS.
155 '
160 ' CATEGORY:  GAMES***
165 '
170 ' LANGUAGE:  BASIC
175 '
180 ' INDEX LINE:
185 '     IS IT POSSIBLE TO !RESCUE THE !STARSHIP !KIEWIT?
190 '
195 '
200 ' INITIALIZATION
290 DIM D(12)                         'SAVE ROOM FOR DISPLAY STRING
300 RANDOMIZE
310 MAT READ B(6,6)                   'B(,) STORES DATA TO DETERMINE
320    DATA 1,0,1,0,1,0.              'IF RESCUE SHIP'S MOVE IS LEGAL.
330    DATA 0,1,0,1,0,1               'A MOVE TO ADJACENT SQUARE IS OK
340    DATA 1,0,10,11,1,0             'IF PRESENT B(,) VALUE + NEW B(,)
250    DATA 0,1,11,10,0,1             'VALUE <> 0,2, OR 11.
360    DATA 1,0,1,0,1,0
370    DATA 0,1,0,1,0,1
280 MAT READ G(3)                     'READ DATA FOR PROHIBITED MOVES
390    DATA 0,2,11
400 PRINT
410 PRINT "*** MAYDAY *** MAYDAY *** MAYDAY ***"
420 PRINT "INTERSTELLAR STARSHIP KIEWIT CALLING."
430 PRINT "COMPUTER DISC FAILURE MODIFIED OUR NAVIGATIONAL SOFTWARE"
440 PRINT "AND WE HAVE SCRAPED AGAINST ASTEROID #ASR-33.  OUR HULL AND"
450 PRINT "LIFEBOATS ARE DAMAGED.  MOST OF OUR LIFE-SUPPORT SYSTEMS"
460 PRINT "HAVE BEEN DESTROYED.  IMMEDIATE ASSISTANCE IS ESSENTIAL."
470 PRINT "*** MAYDAY *** MAYDAY *** MAYDAY ***"
480 LET T=12                          'SAVE KIEWIT WITHIN T MOVES
490 FOR J=1 TO 6                      'REPLAY RETURNS TO HERE
500    FOR K=1 TO 6                   'P(,) STORES 6 BY 6 DISPLAY
510       LET P(J,K)=32               'INITIALLY, EACH P(,)=32
520    NEXT K
530 NEXT J
540 LET W1=W2=0                       'RESET MOVE TALLY, RESET WIN FLAG
550 IF RND<.5 THEN 580                'STARSHIP KIEWIT INITIALLY MOVES
560    LET M=1                        'SOUTH IF M=1
570    GOTO 590
580 LET M=-1                          'NORTH IF M=1
590 LET R1=1+INT(RND*6)               'R1 IS ROW OF RESCUE SHIP
600 LET C1=6                          'C1 IS COLUMN OF RESCUE SHIP
610 LET P(R1,C1)=38                   'RESCUE SHIP SYMBOL IS &
620 LET C2=1+INT(RND*6)               'C2 IS COLUMN OF KIEWIT
630 LET R2=1+INT(RND*6)               'C2 IS ROW OF KIEWIT
640 IF P(R2,C2)=B(r2,c2) THEN 660     'START KIEWIT AT OPPOSITION
650    GOTO 620                       'TRY AGAIN
660 LET P(R2,C2)=42                   'KIEWIT SYMBOL IS *
670 PRINT
680 PRINT "DO YOU NEED INSTRUCTIONS"
690 LINPUT I$
700 IF SEG$(I$,1,1)<>"Y" THEN 720
710    GOSUB 2320
720 PRINT
730 PRINT "RESCUE STARSHIP (&) IS AT "STR$(R1);",";STR$(C1)
740 PRINT "STARSHIP KIEWIT (*) IS AT "STR$(R2);",";STR$(C2)
750 PRINT "SAVE STARSHIP KIEWIT BY MOVING INTO ITS SQUARE WITHIN"T;"MOVES"
760 PRINT
770 PRINT "MAP AT START"
780 GOTO 848
790
800 ' PRINT DISPLAY
810
820 PRINT
830 PRINT "MAP AFTER MOVE";W1
840 PRINT "  1 2 3 4 5 6"             'IDENTIFY COLUMNS
850 FOR J=1 TO 6                      '6 ROWS
860    PRINT STR$(J);                 'IDENTIFY EACH ROW
870    FOR K=6 TO 1 STEP -1           'ROUTINE TO IGNORE TRAILING SPACES
880       IF P(J,K)=32 THEN 900
890          GOTO 930
900    NEXT K
910    PRINT
920    GOTO 1060
930    LET D(0)=0                     'RESET DISPLAY STRING CHARACTER COUNT
940    FOR L=K TO 1 STEP -1
950       IF W2=0 THEN 1000           'NO WINNER YET
960          IF D(0)>0 THEN 1080      'WIN DISPLAY IS SET
970             LET D(2*L)=38
980             LET D(2*L-1)=42
990             GOTO 1020
1000      LET D(2*L)=P(J,L)            'ASSEMBLE DISPLAY STRING
1010      LET D(2*L-1)=32
1020      LET D(0 )=D(0)+2             'COUNT CHARACTERS
1030    NEXT L
1040    CHANGE D TO D$
1050    PRINT D$                       'PRINT BALANCE OF ROW J
1060 NEXT J
1070 IF W2=0 THEN 1170
1080
1090    ' WINNER!!
1100
1110    PRINT "THANK HEAVEN!! YOU'VE SAVED THE PEOPLE ABOARD STARSHIP KIEWIT"
1120    PRINT "REPLAY";
1130    LINPUT R$
1140    IF SEG$(R$,1,1)<>"Y" THEN 1160
1150       GOTO 490
1160    STOP
1170 IF W1<T THEN 1240                  'NOT 7TH MOVE
1180
1190    ' LOSER
1200
1210    PRINT "DISASTER!! THE PEOPLE ABOARD STARSHIP KIEWIT HAVE PERISHED"
1220    PRINT "FROM COLD AND LACK OF OXYGEN."
1230    GOTO 1120                       'ASK ABOUT REPLAY
1240 LET W1=W1+1                        'TALLY MOVES
1250
1260 ' GET USER'S MOVE
1270
1280 PRINT "RESCUE STARSHIP'S MOVE (ROW,COL)"; 
1290 LINPUT A$
1300 IF SEG$(A$,1,1)<>"S" THEN 1330     ' CONTINUE
1310    PRINT "PROGRAM HALTED"
1320    STOP
1330 IF A$<>"HELP" THEN 1600
1340
1350    ' HELP SECTION PRINTS LEGAL MOVES
1360
1370    PRINT "YOU ARE NOW AT (ROW,COL) ";STR$(R1);",";STR$(C1)
1380    PRINT "YOU MAY MOVE TO ANY OF THESE SQUARES (ROW,COL):"
1390    IF R1=1 THEN 1410
1400       PRINT "  ";STR$(R1-1);",";STR$(C1);
1410    IF C1=1 THEN 1430
1420       PRINT "  ";STR$(R1);",";STR$(C1-1);
1430    IF C1=6 THEN 1450
1440       PRINT "  ";STR$(R1);",";STR$(C1+1);
1450    IF R1=6 THEN 1470
1460       PRINT "  ";STR$(R1+1);",";STR$(C1);
1470    IF (3-R1)*(4-R1)<>0 THEN 1500   'NOT IN CENTER ROWS
1480       IF (3-C1)*(4-C1)<>0 THEN 1500   'NOT IN CENTER COLS
1490          PRINT "  ";STR$(ABS(7-R1));",";STR$(ABS(7-C1));
1500    PRINT
1510    PRINT "WANT THE COMPLETE INSTRUCTIONS"?;
1520    LINPUT IS
1530    IF SEG$(IS,1,1)="Y" THEN 1550
1540        GOTO 1280
1550    GOSUB 2320
1560    GOTO 1280
1570
1580    ' CHECK IF LEGAL MOVE
1590      
1600 IF LEN(A$)<>3 THEN 1680           'A$ MUST BE 3 CHARACTERS
1610    CHANGE A$ TO A
1620    IF A$(2)<>44 THEN 1680         'MIDDLE CHARACTER MUST BE COMMA
1630       LET R3=A$(1)-48             'R3 IS TRIAL ROW
1640       LET C3=A$(3)-48             'C3 IS TRIAL COLUMN
1650       IF (9-R3)*R3<0 THEN 1680    'R3 MUST BE A DIGIT
1660          IF (9-C3)*C3<0 THEN 1680  'C3 MUST BE A DIGIT
1670             GOTO 1710
1680 PRINT "YOU MUST TYPE 2 DIGITS SEPARATED BY A COMMA.  INPUT IGNORED."
1690 GOTO 1280
1700
1710 IF (6-R3)*(R3-1)<0 THEN 1830      'R3 MUST BE FROM 1 THRU 6
1720    IF (6-C3)*(C3-1)<0 THEN 1830   'C3 MUST BE FROM 1 THRU 6
1730       IF ABS(R3-R1)>1 THEN 1830   'CAN'T MOVE MORE THAN 1 ROW
1740          IF ABS(C3-C1)>1 THEN 1830  'OK 1 COLUMN
1750             IF ABS(R3-R1)+ABS(C3-C1)<0 THEN 1780   'MUST MOVE
1760                PRINT "YOU MUST MOVE YOUR SHIP!"
1770                GOTO 1830
1780             FOR J=1 TO 3          'CHECK FOR PROHIBITED DIAGONAL MOVE
1790                IF B(R1,C1)+B(R3,C3)<>G(J) THEN 1810
1800                   GOTO 1830
1810             NEXT J
1820             GOTO 1860
1830 PRINT "ILLEGAL MOVE. TYPE HELP IF YOU NEED IT. INPUT IGNORED."
1840 GOTO 1280
1850
1860 LET P(R3,C3)=38                   'LEGAL MOVE, SO MOVE RESCUE SYMBOL
1870 LET P(R1,C1)=32                   'OLD LOCATION BECOMES A SPACE
1880 IF ABS(R2-R3)+ABS(C2-C3)<>0 THEN 1910  'NO WINNER YET
1890    LET W=1                        'SET WIN FLAG
1900    GOTO 820                       'GO PRINT WIN DISPLAY
1910 LET R1=R3                         'UPDATE RESCUE SHIP'S LOCATION
1920 LET C1=C3
1930
1940 ' STARSHIP KIEWIT MOVE SECTION
1950
1960 IF ABS(R1-R2)+ABS(C1-C2)>2 THEN 2200  'RESCUE SHIP REMOTE, IGNORE IT
1965
1970    FOR J=1 TO 2
1980       LET R3=R2+M                 'CHANGE ROW
1990       IF ABS(R1-R3)+ABS(K1-R2) THEN 2020  'MOVED AWAY, CHECK LOCATION
2010          GOTO 2240
2020       IF (6-R3)*(R3-1)<0 THEN 2040  'OUT OF BOUNDS
2030          GOTO 2240                'STILL ON BOARD, SO RECORD MOVE
2040       LET M=-M                    'REVERSE DIRECTION
2050    NEXT J                         'AND TRY ONCE MORE
2055
2060    FOR J=1 TO 2
2070       LET C3=C2+M                 'CHANGE COLUMN
2080       IF ABS(C1-C3)>ABS(C1-C2) THEN 2110  'MOVED AWAY, CHECK LOCATION
2100          GOTO 2130
2110       IF (6-C3)*(C3-1)<0 THEN 2130  'OUT OF BOUNDS
2120           GOTO 2130               'STILL ON BOARD, SO RECORD MOVE
2130       LET M=-M                    'REVERSE DIRECTION
2140    NEXT J                         'AND TRY ONCE MORE
2145
2150    GOTO 2200                      'CAN'T MOVE AWAY, SO JUST MOVE
2160    LET P(R2,C3)=42                'MOVE KIEWIT SYMBOL
2170    LET P(R2,C2)=32                'OLD LOCATION BECOMES A SPACE
2180    LET C2=C3                      'UPDATE LOCATION
2190    GOTO 2270                      'GO PRINT NEW LOCATION
2200 LET R3=R2+M                       'CHANGE ROW
2210 IF (6-R3)*(R3-1)=>0 THEN 2240     'STILL ON THE BOARD
2220    LET M=-1                       'REVERSE DIRECTION
2230    GOTO 2200
2240 LET P(R3,C2)=42                   'MOVE KIEWIT SYMBOL     
2250 LET P(R2,C2)=32                   'OLD LOCATION BECOMES A SPACE
2260 LET R2=R3                         'UPDATE LOCATION
2270 PRINT "STARSHIP KIEWIT GOES TO ";STR$(R2);",";STR$(C2)
2280 GOTO 820                          'GO PRINT DISPLAY
2290
2300  ' INSTRUCTIONS
2310
2320  PRINT
2330  PRINT "THE YEAR IS 2087. YOU ARE COMMANDER OF AN ORBITAL RESCUE"
2340  PRINT "STATION. IN RESPONSE TO THE DISTRESS CALL FROM STARSHIP"
2350  PRINT "KIEWIT, YOU SET OUT TO TRY TO RESCUE ITS CREW AND PASSENGERS"
2360  PRINT "BEFORE THEIR OXYGEN IS EXHAUSTED."
2370  PRINT
2380  PRINT "THE PEOPLE ABOARD THE KIEWIT WILL BE SAVED IF YOU CAN MOVE"
2390  PRINT "INTO THE SQUARE IT OCCUPIES WITHIN "T" MOVES."
2400  PRINT
2410  PRINT "THE ACTION IS DISPLAYED ON A BOARD OF 6 SQUARES BY 6 SQUARES."
2420  PRINT "THE SQUARE AT UPPER LEFT IS ROW 1, COLUMN 1."
2430  PRINT "YOU SPECIFY A MOVE BY TYPING 2 DIGITS (1-6) SEPARATED BY"
2440  PRINT "A COMMA. THE FIRST NUMBER TELLS THE ROW AND THE SECOND"
2450  PRINT "THE COLUMN."
2460  PRINT
2470  PRINT "AT EACH TURN YOU MOVE THE RESCUE STARSHIP TO ANY ADJACENT"
2480  PRINT "SQUARE WHICH HAS A SIDE IN COMMON WITH YOUR CURRENT SQUARE."
2490  PRINT "YOU MAY MOVE DIAGONALLY ONLY BETWEEN THE 4 CENTER SQUARES,"
2500  PRINT "WHICH ARE (ROW,COL):  3,3  3,4  4,3  4,4."
2510  PRINT
2520  PRINT "STARSHIP KIEWIT ALSO MOVES, FOR THE COMPUTER MALFUNCTION"
2530  PRINT "PREVENTS TOTAL ENGINE SHUT-DOWN OR PROPER NAVIGATION."
2540  PRINT "NOTE: KIEWIT'S AUTOMATIC METEOR AVOIDANCE SYSTEM HAS BEEN"
2550  PRINT "JAMMED 'ON' BY THE COLLISION, WHICH MEANS THE KIEWIT TENDS"
2560  PRINT "TO AVOID ANY OBJECT WHICH APPROACHES TOO CLOSELY."
2570  PRINT
2580  RETURN
2590  END
