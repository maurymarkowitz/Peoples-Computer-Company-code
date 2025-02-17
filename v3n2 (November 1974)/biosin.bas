10 rem***********************************************************
20 rem** copyright 1971 by the regents of the uni. of calif.   **
30 rem** produced at the Lawrence hall of science, Berkeley.   **
40 rem** (modified and documented by the aardvark at the PCC)  **
50 rem***********************************************************
60 rem
70 dim a$[21],b$[36],c$[72],a[12]
80 rem** a is an array containing the number of days in each month
90 mat read a
100 rem** fny is the number of days in February of the year y
110 def fny(y)=29-sgn(y/4-int(y/4))
120 rem***  fns is the sinewave function
130 def fns(s)=int(14*sin(s/p-int(s/p))*6.28318)+30.5)