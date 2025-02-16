100 rem *** hurkle - people's computer company, menlo park, ca
110 print "want the rules";
120 input z$[1,1]
130 if z$ <> "Y" then 450
140 rem *** here are the rules
150 print "a hurkle is hiding in a grid, like the one below."
160 print
170 print
180 print tab(26);"north"
190 print
200 for k=9 to 0 step -1
210 if k <> 4 then 240
220 print tab(6);"west   4";tab(20);". . . . . . . . . .   east"
230 goto 250
240 print tab(14);k;tab(20);". . . . . . . . . ."
250 next k
260 print
270 print tab(20);"0 1 2 3 4 5 6 7 8 9"
280 print
290 print tab(26);"south"
300 print
210 print "try to guess where the hurkle is hiding. you guess"
220 print "by telling me the gridpoint where you think that"
230 print "the hurkle is hiding. homebase is point  0,0  in:
340 print "the southwest corner. your guess should be a pair"
350 print