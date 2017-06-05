10 CLS
15 DIM A(100) AS STRING, C(100) AS STRING
20 COLOR 2: PRINT TAB(10); "BULLS AND COWS"
30 PLAY "L16ABCGAB"
40 CLS
50 COLOR 4: PRINT "               BULLS AND COWS"
70 SLEEP (2)
90 CLS
100 COLOR 5: PRINT "For the one who is going to give the word."
110 PLAY "L16abcgabcg": BEEP
120 INPUT "WHAT IS THE WORD?"; word$
130 IF LEN(word$) > 4 OR LEN(word$) < 4 THEN PRINT "A FOUR LETTER WORD!!!": BEEP: SLEEP (1): GOTO 120 ELSE 140
140 CLS
150 BEEP
160 COLOR 3: PRINT "Now for the one who is going to guess the word ."
170 BEEP
180 INPUT "How many chances do you need to guess the word?"; NOCHA
190 CLS
200 COLOR 4: PRINT "OKAY!Let the fun begin!!!"
210 PLAY "L16ABCDEFG": CLS
220 FOR I = 1 TO NOCHA
225 bu = 0: tbu = bu
226 CO = 0
230 INPUT tmpwo$
240 IF LEN(tmpwo$) > 4 OR LEN(tmpwo$) < 4 THEN PRINT "ONLY 4 LETTERS!!!": BEEP
250 A(1) = LEFT$(word$, 1)
260 A(2) = MID$(word$, 2, 2)
270 A(3) = MID$(word$, 3, 3)
275 A(4) = RIGHT$(word$, 1)
280 C(1) = LEFT$(tmpwo$, 1)
290 C(2) = MID$(tmpwo$, 2, 2)
300 C(3) = MID$(tmpwo$, 3, 3)
301 C(4) = RIGHT$(tmpwo$, 1)
302 IF word$ = tmpwo$ THEN 402
310 FOR H = 1 TO 4
320 FOR J = 1 TO 4
350 IF C(J) = A(H) AND H = J THEN bu = bu + 1: GOTO 361
360 IF C(J) = A(H) THEN CO = CO + 1
361 IF H < 4 AND J < 4 THEN 362 ELSE 365
362 IF C(J) = C(J + 1) AND A(H) = A(H + 1) AND A(H) = C(J) THEN 370
365 IF J < 4 THEN GOTO 366 ELSE 370
366 IF A(J) = A(J + 1) AND C(J) = C(J + 1) THEN J = J + 1
370 NEXT J
380 NEXT H
390 IF bu + CO = 0 THEN PRINT "BullShit": GOTO 410
400 PRINT bu; "B"; CO; "C"
401 IF bu = 4 THEN PRINT "GOT THE WORD": PLAY "L8CDEFGAB": GOTO 420
410 NEXT I
420 END

