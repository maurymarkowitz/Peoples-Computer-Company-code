1 REM "BIOSIN" BY LAWRENCE HALL OF SCIENCE, U OF CAL BERKELEY
2 REM MODIFIED BY THE OLD SOLDIER FOR PDP8L, EDU20
33 PRI"FOR WHOM IS THIS CHART?";\LINPUT Z$\Z=Z$(0)
106 FOR I=1TO7\READA$(I)\NEXTI
107 FOR I=1TO12\READA(I)\NEXTI
108 FORI=1TO12\READB$(I)\NEXTI
113 DEF FNY(Y)29-SGN(Y/4-INT(Y/4))
115 DEF FNS(S)=INT(20*SIN(S/P-INT(S/P))*6.28318)+40.5)
117 DEF FNM(X)=INT(8*(X/7-INT(X/7))+.5)
159 PRINT "BIRTHDAY (MM,DD,YYYY)";\INPUTM,D,Y
160 Y=INT(100.1*(Y/100-IT(Y/100)))\IFM=1THEN174
169 FOR I=1 TO M-1\D=D+A(I)\NEXT I
174 PRINT " PLOT STARTING DATE? (MM,DD,YYYY)";\INPUTM1,D1,Y1\DO=E1
177 Y1=INT(100.1+(Y1/100-INT(Y1/100)))
178 A(S)=FNY(Y1)
179 IF M1=1 THEN 189
181 FOR I=1 TO M1-1\D1=D1+A(I)\NEXT I
189 S=0\FOR I=Y+1 TO Y1-1\IF I/4=INT(I/4) THEN S=S+1\NEXT I
193 IF Y/4=INT(Y/Y) THEN S=S+1\IF D>59 THEN 197
195 S=S+((Y1-1-1)*365)\S=S+(365-D)\S=S+D1
196 GOT200
197 IF Y/4=INT(Y/4) THEN S=S-1\ GOT195
202 D3=Y1*365+D1
203 FOR I = 1 TO Y1-1\IF I/4=INT(I/4) THEN D3=D3+1\NEXT I
206 PRINT" HOW MANY DAYS DO YOU WANT PLATTED";\INPUTD9
209 D1=D0\GO SUB 300
211 PRI\FORI=1TO24\PRI"(*);\NEXTI
213 PRINT"";TAB(30);"(-)    (O)     (+)"
214 FOR Q=1 TO D9\E=FNM(D3-1)+1\PRI A$(E);\PRI D1;\IF Z<1THEN224
223 IF D1<> 1 THEN 226
224 PRINTB$(M1)'\PRIY1;\Z=Z+1
226 IFA$(E)="SUN"THEN 229
227 FORI=LEN(C$)+1 TO 63\C$(I,I)=" "\NEXTI
228 GOTO 230
229 FOR I=LEN(C$)+1 TO 63\C$(I,I)="-"\NEXT I
230 FOR I=1TO3\P=18+(5*I)\X(I)=FNS(S)\NEXTI
236 C$(40,40)="I"
237 C$(X(1),X(1))="P"
238 IF (C1)<>X(2) THEN241\IF X(1)<>X(3) THEN241\IF X(2)<>X(3) THEN241
239 C$(X(1),X(1))="*"\GOT245
241 IF(X1)<>X(2) THEN 244
242 C$(C(3),X(3))="C"\GOT245
244 IF X(2)<> X(3) THEN 247
245 C$(X(2),X(2))="*"\GOT 251
247 C$(X(2),X(2))="S"
248 IF X(1)=X(3) THEN 239
249 C$(X(3),X(3))="C"
251 PRITAB(14);\FORX=15TO63\PRIC$(X,X);\NEXT X
255 PRINT\D3=D3+1\S=S+1\D1=D1+1\IFD1<A(M1)+1 THEN267
261 D1=1\M1=M1+1\IFM1<13THEN267
264 M1=1\Y1=Y1+1\A(2)=FNY(Y)
267 NEXT Q
268 PRINT""
270 PR\FOR I=1 TO 24\PRI"<*>";\NEXT I
272 FOR I=1 TO 10\ PRI\ NEXT I
277 DATA"MON","TUE","WED","THU","FRI","SAT","SUN"
278 DATA31,28,31,30,31,30,31,31,30,31,30,31
279 DATA "JAN","FEB","MAR","APR","MAY","JUN"
280 DATA "JUL","AUG","SEP","OCT","NOV","DEC"
281 END
300 FOR I = 1 TO 10\ PRI \NEXT I
302 FOR I = 1 TO 72 \ PRI"*";\ NEXT I
304 FOR I=1TO5\PRI"B I O R H Y T H M   C H A R T";CHR$(13);\NEXTI
310 PRI
312 FORI=1TO5\FORJ=1TOINT(Z/6+.9)\PRIZ$(J);\NEXTJ
313 PRICHR$(13);\NEXTO
314 Z=0
320 PRI\PRI\PRI
322 PRITAB(1);
326 PRI" YOU HAVE LIVED "S" DAYS AT THE START OF THIS PLOT."\PRI
328 PRITAB(10)CHR$(34);"P";CHR$(34);" STANDS FOR PHYSICAL CYCLE.";
329 PRITAB(57)"(23 DAY)"
330 PRITAB(10)CHR$(34);"S"CHR$(34);" STANDS FOR SENSITIVITY CYCLE.";
331 PRTAB(57);"(28 DAY)"
332 PRITAB(10)CHR$(34);"C";CHR$(34);" STANDS FOR COGNITIVE ";
334 PRI"(INTELLECTUAL) CYCLE."\PRITAB(57)33 DAY)"
340 PRI
344 PRI"CRITICAL DAYS"CHR$(14);\PRI"CRITICAL DAYS:"
346 PRI
348 PRI"WHENEVER A CYCLE CROSSES THE MEDIAN LINE, THIS IS";
350 PRI" A ";CHR$(34)"CRITICAL DAY";CHR$(34);","" YOU ARE SUPPOSED ";
352 PRI"TO BE MORE PRONE TO ACCIDENTS ON THAT DAY SO BE CAREFUL!"
362 PRI\PRI\RETURN
