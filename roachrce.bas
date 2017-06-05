10 CLS
20 LOCATE 10, 20: COLOR 1: PRINT "COCKROACH RACER"
30 SLEEP (2)
40 CLS : LOCATE 5, 5: COLOR 2: PRINT "This game is dedicated to my cousin brother residing in U.S.A. whose name is Abhay Vardhan. YEAH!"
50 SLEEP (2): CLS
60 LOCATE 1, 10: PRINT "Credits"
70 PRINT "Programmer                                      :Ravi Prakash"
80 PRINT "Idea                                            :Ravi Prakash"
90 PRINT "Finance                                         :Ravi Prakash"
100 PRINT "Music                                           :Ravi Prakash"
110 PRINT "Also, thanks to                                 :Ravi Prakash"
120 PRINT "Besides these, we would also like to thank      :Ravi Prakash"
150 SLEEP (2)
160 PRINT " DEFAULT KEYS"
170 PRINT " UP   -  ;"
180 PRINT "DOWN  -  ."
190 PRINT "LEFT  -  Z"
200 PRINT "RIGHT -  X"
210 CLS
400 SCREEN 8
410 PLAY ON
411 COMPX = 185
412 compy = 220
413 userX = 185
414 userY = 420
420 LINE (80, 200)-(88, 0), 3, BF
430 LINE (552, 0)-(560, 200), 3, BF
440 LINE (140, 0)-(140, 200), 2
450 LINE (500, 0)-(500, 200), 2
540 CIRCLE (compy, COMPX), 2, 4, , , 1.2
550 CIRCLE (userY, userX), 3, 5, , , 1.2
600 CIRCLE (compy, COMPX), 2, 0, , , 1.2
610 CIRCLE (userY, userX), 3, 0, , , 1.2
560 IF INKEY$ = "z" OR INKEY$ = "Z" THEN userY = userY - 3
570 IF INKEY$ = "x" OR INKEY$ = "X" THEN userY = userY + 3
580 IF INKEY$ = ";" THEN userX = userX - 3
590 IF INKEY$ = "." THEN userX = userX + 3
620 GOTO 540
                          








