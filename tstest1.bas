10 CLS
15 DIM A(255) AS STRING
20 b = 1
30 OPEN "D:\USERS\RAVI\QBASIC\TS.BAS" FOR OUTPUT AS #3
40 A(b) = CHR$(b)
50 WRITE #3, A(b)
60 PRINT b, A(b)
70 b = b + 1
80 IF b = 255 THEN 90 ELSE 40
90 CLOSE #3





