10 CLS
20 SCREEN 1
30 A = 50: B = 50
45 LINE (A, B)-(A - 2, B - 2), , BF
50 IF INKEY$ = "X" OR INKEY$ = "x" THEN A = A + 3
60 IF INKEY$ = "Z" OR INKEY$ = "z" THEN A = A - 3
70 IF INKEY$ = ";" THEN B = B - 3
80 IF INKEY$ = "." THEN B = B + 3
100 IF INKEY$ = CHR$(27) THEN 120 ELSE 45
120 END


