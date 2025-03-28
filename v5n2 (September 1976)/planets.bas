100 ' NAME:  ELEMLIB***:PLANETS
110 '
120 ' BY:  MAC OGLESBY ON 04/29/76.
130
140 ' DESCRIPTION:  THE PROGRAM PRINTS A MAP OF THE SOLAR SYSTEM
150 '   (OUT AS FAR AS SATURN) AND A TABLE OF DISTANCES. THE USER
160 '   IS ASKED TO FIND THE SHORTEST ALLOWABLE ROUTE WHICH TOUCHES
170 '   EACH PLANET.  THREE LEVELS OF DIFFICULTY ARE OFFERED.
180 '
190 ' INSTRUCTIONS:  TYPE "RUN" FOR COMPLETE INSTRUCTIONS.
200 '   NOTE: THIS PROGRAM IS WRITTEN FOR TERMINALS WHICH PRINT
210 '   SIX LINES OR TEN CHARACTERS PER INCH.
220 '
230 '
1000 RANDOMIZE
1010
1020 'FUNCTION FOR DISTANCE (IN LIGHT-SECONDS) BETWEEN PLANETS
1030 DEF FNA(A,B)=INT(485*(SQR((ABS(L(A)-L(B))/6)^2+(ABS(T(A)-T(B))/10)^2)))
1040 'ABOVE LINE ENDS:   ^2)))
1050
1060 'READ POSSIBLE PLANET LOCATIONS:  R(), STORES ROW, C(), COLUMN
1070 FOR J=2 TO 8
1080    FOR K=1 TO 5
1090       READ R(J,K),C(J,K)
1100    NEXT K
1110 NEXT J
1120    DATA 56,13,56,17,58,11,60,13,60,17  'MERCURY
1130    DATA 54,13,57,8,57,22,61,10,61,20  'VENUS
1140    DATA 52,15,55,6,55,24,63,9,63,21  'EARTH
1150    DATA 50,8,50,22,59,30,64,4,64,26  'MARS
1160    DATA 42,6,42,24,47,36,53,42,62,42  'CERES
1170    DATA 27,9,29,34,35,50,48,64,65,66  'JUPITER
1180    DATA 1,8,1,22,3,40,5,50,10,66  'SATURN
1190
1200 'READ LENGTH OF EACH PLANET'S NAME
1210 FOR J=2 TO 8
1220    READ B(J)
1230 NEXT J
1240    DATA 7,5,5,4,5,7,6
1250
1260 'READ PLANET NAMES
1270 FOR J=2 TO 8
1280    READ P$(J)
1290 NEXT J
1300    DATA MERCURY,VENUS,EARTH,MARS,CERES,JUPITER,SATURN
1310
1320 'READ ABBREVIATIONS
1330 FOR J=1 TO 8
1340    READ Q$(J)
1350 NEXT J
1360    DATA SUN,MER,VEN,EAR,MAR,CER,JUP,SAT
1370
1380 'READ LOCATIONS OF INNER PLANET SEPARATIONS
1390 FOR J=1 TO 6
1400    READ Y(J),X(J)
1410 NEXT J
1420    DATA 3,2,4,2,4,3,5,2,5,3,5,4
1430
1440 PRINT "IMAGINE YOU CAN MOVE FROM PLANET TO PLANET AT THE SPEED ";
1450 PRINT "OF LIGHT!"
1460 PRINT "LET'S TAKE AN INTERPLANETARY TOUR..."
1470 PRINT "1-SIMPLE  2-HARDER  3-HARDER STILL ";  'REPLAY RETURNS HERE
1480 INPUT F1
1490 IF (1-F1)*(2-F1)*(3-F1)=0 THEN 1520
1500    PRINT "PLEASE TYPE 1, 2, OR 3";
1510    GOTO 1480
1520 IF Q=0 THEN 1540                  'SKIP INSTRUCTIONS IF REPLAY
1530    GOTO 1610
1540 PRINT
1550 PRINT "STARTING AND ENDING AT EARTH. TRAVEL THE SHORTEST ALLOWABLE"
1560 PRINT "ROUTE WHICH TOUCHES EACH OF THE SEVEN PLANETS SHOWN (INCLUDING"
1570 PRINT "THE MINOR PLANET CERES BUT NOT THE SUN)."
1590
1600 'PICK PLANET LOCATIONS
1610 FOR J=2 TO 8  
1620    LET U(J)=J                     'U() WILL SHOW PLANETS MISSED
1630    LET N=1+INT(RND*5)             'PICK LOCATION AT RANDOM
1640    LET L(J)=M(J)=R(J,N)           'L(), M() STORE ROW OF PLANET
1650    LET T(J)=C(J,N)                'T() STORES COLUMN OF PLANET
1660    LET N(J)=T(J)-B(J)             'N() STORES LOCATION OF NAME
1670 NEXT J
1680
1690 'LOCATE SUN
1700 LET L(1)=58
1710 LET T(1)=15
1720
1730 'MOVE DISPLAY TO LEFT MARGIN
1740 FOR J=3 TO 8
1750    IF N(2)<=N(J) THEN 1770
1760       LET N(2)=N(J)
1770 NEXT J
1780 IF N(2)=0 THEN 1840
1790    FOR J=1 TO 8
1800       LET T(J)=T(J)-N(2)
1810    NEXT J
1820
1830    'MOVE DISPLAY TO TOP MARGIN
1840 LET M1=0
1850 IF L(8)=1 THEN 1920
1860    LET M1=L(8)-1
1870    FOR J=1 TO 8
1880       LET L(J)=M(J)=L(J)-M1
1890    NEXT J
1900
1910    'DETERMINE ORDER IN WHICH TO PRINT PLANETS
1920 FOR J=2 TO 7
1930    FOR K=J+1 TO 8
1940       IF M(J)<M(K) THEN 1980
1950          LET T9=M(J)
1960          LET M(J)=M(K)
1970          LET M(K)=T9
1980     NEXT K
1990 NEXT J
2000
2010 'PRINT MAP
2020 PRINT
2030 PRINT "MAP SCALE IS ABOUT 1:6,000,000,000,000"
2040 PRINT
2050 PRINT
2060 LET Q=2                           '(SUN IS 1ST "PLANET")
2070 FOR J=1 TO 65-M1
2080    IF J<>L(1) THEN 2140           'SUN'S ROW?
2090       IF L(2)<>L(1) THEN 2120     'MERCURY'S ROW?
2100          PRINT TAB(T(2)-B(2));"MERCURY.";
2110          LET Q=Q+1                'COUNT PLANETS PRINTED
2120       PRINT TAB(T(1));"SUN";
2130       GOTO 2190
2140    IF M(Q)<>J THEN 2240           'IS THERE A PLANET IN THIS ROW?
2150      FOR K=2 TO 8
2160         IF L(K)=J THEN 2230       'YES, SO FIND WHICH ONE,
2170            PRINT TAB(T(K)-B(K));P$(K);".";   'PRINT IT,
2180            LET Q=Q+1              'INCREMENT COUNTER,
2190            IF J<L(1) THEN 2220    'AND SEE IF WE'RE FINISHED
2200               IF Q<9 THEN 2220
2210            GOTO 2260              'MAP FINISHED
2220
2230       NEXT K
2240    PRINT
2250 NEXT J
2260 FOR J=1 TO 5
2270    PRINT
2280 NEXT J
2290
2300 PRINT "TABLE OF DISTANCES (IN LIGHT-SECONDS)"
2310 'COMPUTE AND STORE DISTANCES
2320 FOR J=1 TO 8
2330    FOR K=1 TO J
2340       LET D(J,K)=FNA(J,K)
2350    NEXT K
2360 NEXT J
2370 'FILL OUT MATRIX
2380 FOR J=1 TO 8
2390    FOR K=J+1 TO 8
2400       LET D(J,K)=D(K,J)
2410    NEXT K
2420 NEXT J
2430 'PRINT DISTANCE TABLE
2440 PRINT
2450 PRINT "     SUN MER VEN EAR MAR CER JUP SAT"
2460 FOR J=1 TO 8
2470    PRINT Q$(J);
2480    FOR K=1 TO J
2490       PRINT " ";
2500       PRINT USING "-###",D(J,K);
2510    NEXT K
2520    PRINT
2530 NEXT J
2540 PRINT
2550
2560 'CONVERT F1 TO MINIMUM MOVE SIZE ALLOWABLE
2570 IF F1>1 THEN 2600
2580    LET F1=50+INT(RND*100)         '50 <= F1 <= 149  (THIS WON'T
2590    GOTO 2740                      '  RESTRICT MOVES AT ALL)
2600 FOR J=1 TO 6
2610    LET Z(J)=D(Y(J),X(J)) *Z() STORES DISTANCES
2620 NEXT J
2630 'SORT THE DISTANCES
2640 FOR J=1 TO 5
2650    FOR K=J+1 TO 6
2660       IF Z(J)<=Z(K) THEN 2700
2670       LET T8=Z(J)
2680       LET Z(J)=Z(K)
2690       LET Z(K)=T8
2700    NEXT K
2710 NEXT J
2720 LET F1=Z(2*F1-2)+1                'MINIMUM MOVE ALLOWABLE
2730
2740 CALL "PERMUTE":D(,),E,F1          'FIND SHORTEST ROUTE E
2750
2760 PRINT
2770 PRINT
2780 PRINT "*** EACH MOVE MUST BE AT LEAST ";F1;" LIGHT-SECONDS."
2790 PRINT
2800 LET J1=4                          'START AT EARTH
2810 LET DI=0                          'RESET TOTAL DISTANCE
2820 LET U(4)=0                        'SCRATCH EARTH FROM LIST
2830 PRINT "YOU ARE NOW ON ";P$(J1);".  ";
2840 PRINT "MOVE TO...";               'REQUEST USER'S DESTINATION
2850 LINPUT A$
2860 IF (11-LEN(A$))*LEN(A$)>0 THEN 2920
2870    PRINT "INCORRECT INPUT.  ";
2880    PRINT "PLEASE TRY AGAIN...";
2890    GOTO 2850
2900
2910    'PROCESS INPUT
2920 CHANGE A$ TO A
2930 LET A9=0
2940 FOR J=1 TO A(0)
2950    IF A(J)<96 THEN 2970
2960       LET A(J)=A(J)-32            'CHANGE LOWERCASE TO UPPER
2970    IF (90-A(J))*(A(J)-65)=>0 THEN 2990  'LOOK FOR A LETTER
2980       GOTO 3010                   'ELSE IGNORE THIS CHARACTER
2990    LET A9=A9+1
3000    LET A(A9)=A(J)
3010 NEXT J
3020 LET A(0)=A9
3030 CHANGE A TO A$
3040
3050 IF A$<>"STOP" THEN 3070
3060    STOP
3070 LET A$=SEG$(A$,1,3)               'WE NEED ONLY FIRST 3 LETTERS
3080 FOR J=1 TO 8
3090    IF A$=Q$(J) THEN 3110          'LOOK FOR LEGAL INPUT
3100       GOTO 3150                   'CONTINUE SCREENING
3110 NEXT J
3120 PRINT "I DON'T UNDERSTAND YOUR INPUT.  ";
3130 GOTO 2880
3140
3150 IF J<>J1 THEN 3170                'PRESENT LOCATION?
3160    GOTO 2830
3170 IF J<>1 THEN 3200                 'WATCH OUT FOR SUNBURN!
3180    PRINT "NO, YOU CAN'T GO TO THE SUN!  ";
3190    GOTO 2840
3200 IF D(J1,J)=>F1 THEN 3230          'CHECK SIZE OF DESIRED MOVE
3210    PRINT P$(J);" IS LESS THAN";F1;"LIGHT-SECONDS FROM ";P$(J1);".";
3220    GOTO 2880
3230 LET DI=DI+D(J,J1)                 'TOTAL DISTANCE TRAVELLED
3240 LET J1=J                          'UPDATE LOCATION
3250 LET U(J1)=0                       'SCRATCH PLANET VISITED
3260 IF J=4 THEN 3280                  'SEE IF BACK ON EARTH
3270    GOTO 2830
3280 PRINT
3290 PRINT "*** WELCOME BACK TO EARTH.  ";
3300 FOR J=2 TO 8
3310    IF U(J)=0 THEN 3390            'CHECK FOR MISSED PLANETS
3320       PRINT "BUT YOU MISSED:";
3330       FOR K=2 TO 8
3340          IF U(K)=0 THEN 3360
3350             PRINT "  ";P$(U(K));  'PRINT MISSED PLANETS
3360       NEXT K
3370       PRINT
3380       GOTO 2840                   'CONTINUE GAME...
3390 NEXT J
3400
3410 'FINAL MESSAGES AND REPLAY QUERY
3420 PRINT "YOU TRAVELLED ";D1;"LIGHT-SECONDS."
3430 PRINT
3440 PRINT "IF THE MINIMUM MOVE IS";F1;"LIGHT-SECONDS, THE SHORTEST"
3450 PRINT "ROUTE IS";E;"LIGHT-SECONDS."
3460 IF E<>D1 THEN 3490
3470    PRINT
3480    PRINT "*** CONGRATULATIONS ***"   'BELLS
3490 FOR J=1 TO 3
3500    PRINT
3510 NEXT J
3520 PRINT "WANT TO TRY ANOTHER TOUR";
3530 LINPUT A$
3540 LET A$=SEG$(A$,1,1)
3550 CHANGE A$ TO A
3560 IF (A$(1)=89)+(A$(1)-121)<>0 THEN 3590
3570    GOTO 1470
3580
3590 END
3600
3610
3620 'SUBPROGRAM PERMUTE WAS ADAPTED FROM MIKE VITALE'S PERMUTE***.
3630 'STARTING AND ENDING EACH TIME AT SATURN. WE CHECK EACH POSSIBLE
3640 'ROUTE (AVOIDING UNALLOWABLE MOVES) AND SELECT THE SHORTEST.
3650
3660 SUB "PERMUTE":D(),E,F1
3670
3680    FOR J=1 TO 7
3690       FOR K=1 TO 7
3700          LET V(J,K)=D(J+1,K+1)    'SUBTRACT 1 FROM EACH PLANET'S
3710       NEXT K                      '  ROW AND COLUMN
3720    NEXT J
3730    LET N=6                        'WE NEED PERMUTATION OF 6 THINGS
3740    LET E=100000                   'SET E LARGE INITIALLY
3750
3760    LET P(0)=P(N+1)=N+1            'INITIALIZE PERMUTATION VECTOR,
3770    FOR K=1 TO N
3780       LET P(K)=Q(K)=K             'INVERSE VECTOR,
3790.      LET V(K)=-1                 'DIRECTION VECTOR,
3800.   NEXT K
3810    LET I=N                        'I,
3820    LET T(N)=-2                    'AND TWO COMPONENTS OF
3830    LET T(2)=0                     'THE ADDRESS VECTOR
3840
3850    LET G=V(7,P(1))                'START FROM SATURN
3860    LET J=P(1)                     'UPDATE LOCATION
3870    FOR K=2 TO N                   'CONTINUE TOUR,
3880       IF V(J,P(K))>F1 THEN 3900   'AVOIDING UNALLOWABLE MOVES
3890          GOTO 4000                'TRY ANOTHER ROUTE
3900       LET G=G+V(J,P(K))           'KEEP TRACK OF DISTANCE
3910       LET J=P(K)                  'UPDATE LOCATION
3920    NEXT K
3930    LET G=G+V(J,7)                 'RETURN TO SATURN
3940    IF E<=G THEN 4000
3950    LET E=G                        'KEEP SHORTEST ROUTE
3960    FOR K=1 TO N
3970       LET U(K)=P(K)               'RECORD THE PATHWAY
3980    NEXT K
3990
4000    IF I<>0 THEN 4080              'CHECK FOR STOPPING CRITERION
4010       PRINT (I+INT(RND*7))*111111+E;  'PRINT CODED DISTANCE
4020       FOR K=1 TO N
4030          PRINT STR$(U(K));        'PRINT PATHWAY
4040       NEXT K
4050       PRINT
4060       GOTO 4410                   'BACK TO MAIN PROGRAM...
4070
4080    LET X = P(Q(I))                'TRANSPOSE P(Q(I)) AND P(Q(I)+W(I))
4090    LET P(Q(I)) = P(Q(I)+W(I))
4100    LET P(Q(I)+W(I))=X
4110    LET X=Q(I)                     'TRANSPOSE Q(I) AND Q(P(Q(I)))
4120    LET Q(I)=Q(P(Q(I)))
4130    LET Q(P(X))=X                  'WE HAVE CHANGED Q(I), SO USE X
4140    LET A=B=0                      'SET LOGICAL VARIABLES TO 'FALSE'
4150    IF I=>N THEN 4170              'IF I<N THEN
4160       LET B=1                     'SET B TO 'TRUE'
4170    IF I=P(Q(I)+W(I)) THEN 4200    'AND IF I<P(Q(I)+W(I)) THEN
4180       LET A=1                     'SET A TO 'TRUE'
4190       LET W(I)=-W(I)              'AND REVERSE DIRECTION
4200    IF A=0 THEN 4340               'IF A IS FALSE THEN SKIP
4210       IF T(I)=>0 THEN 4250        'A IS TRUE - CHECK ADDRESS VECTOR
4220          IF T(I)=I-1 THEN 4240    'HERE WE CHANGE THE ADDRESS VECTOR
4230             LET T(I-1)=T(I)       'IF NECESSARY, SO THAT T(I)=>0
4240          LET T(I) = I-1           'T(I) NOW POINTS TO THE RIGHTMOST I
4250       IF B=1 THEN 4290            'IF B IS TRUE THEN SKIP
4260          LET I=T(I)               'ELSE GET ADDRESS
4270          GOTO 3850                'GO TRY THIS ROUTE
4280
4290       LET T(N)=-(I+1)             'BOTH A AND B ARE TRUE HERE SO
4300       LET T(I+1)=T(I)             'CHANGE ADDRESS VECTOR
4310       LET I=N                     'AND I
4320       GOTO 3850
4330
4340    IF B<>0 THEN 4370
4350       GOTO 3850
4360
4370.   LET T(N)=-I                    'ELSE CHANGE DIRECTION VECTOR
4380    LET I=N                        'AND I,
4390    GOTO 3850
4400 
4410 SUBEND
