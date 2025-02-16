5 com k$[1]
20 i=1
30 k$="Y"
40 dim a$[41]
50 dim s$[72],o$[72]
80 p0=72
90 dim a[241],b[241],l[50],m[50]
100 DEF FNA(X)=X-INT((X-1)/6)*6
110 DEF FNB(X)=INT((X-1)/6)+1
190 files test,e
200 goto 2400
320 chain "pilot1"
2400 restore
2410 gosub 4580
2420 i8=0
2430 i9=0
2440 read #1,i
2450 mat read #1;a
2460 read #1,s
2470 mat read #1,b
2480 mat m=zer
2490 mat l=zer
2510 f=0
2520 q=1
2530 for i=1 to 240
2535 gosub 5280
2536 q0=len(s$)
2540 if s$="" then 2750
2545 if s$[1,1]#"*" then 2585
