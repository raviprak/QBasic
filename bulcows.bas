10 CLS
15 DIM A(100) AS STRING, C(100) AS STRING
20 COLOR 2: PRINT TAB(10); "BULLS AND COWS"
30 CLS
50 COLOR 4: PRINT "               BULLS AND COWS"
70 SLEEP (2)
90 CLS
100 COLOR 5: PRINT "For the one who is going to GIVE the word."
120 INPUT "WHAT IS THE W ORD?"; WORD$
130 IF LEN(WORD$) > 4 OR LEN(WORD$) < 4 THEN PRINT "A FOUR LETTER WORD!!!": SLEEP (1): GOTO 120
131 A(1) = LEFT$(WORD$, 1)
132 A(2) = MID$(WORD$, 2, 1)
133 A(3) = MID$(WORD$, 3, 1)
134 A(4) = RIGHT$(WORD$, 1)
140 CLS
150 COLOR 3: PRINT "Now for the one who is going to GUESS the word ."
170 INPUT "How many chances do you need to guess the word?"; NOCHA
190 CLS
200 COLOR 4: PRINT "OKAY!Let the fun begin!!!"
210 mbL16ABCDEFG: CLS
220 FOR I = 1 TO NOCHA
225 BU = 0: TBU = BU
226 CO = 0
230 INPUT TMPWO$
240 IF LEN(TMPWO$) > 4 OR LEN(TMPWO$) < 4 THEN PRINT "ONLY 4 LETTERS!!!": GOTO 230
250 C(1) = LEFT$(TMPWO$, 1)
260 C(2) = MID$(TMPWO$, 2, 1)
270 C(3) = MID$(TMPWO$, 3, 1)
280 C(4) = RIGHT$(TMPWO$, 1)
290 FOR P = 1 TO 4
300 FOR Q = 1 TO 4
310 IF C(Q) = A(P) AND P = Q THEN 311 ELSE 320
311 BU = BU + 1: IF C(Q) = A(Q + 1) THEN P = P + 1: GOTO 330 ELSE 330
320 IF C(Q) = A(P) THEN CO = CO + 1
330 IF Q > 1 AND C(Q) = C(Q - 1) AND TBU = BU + 1 THEN Q = Q + 1: BU = BU - 1
340 NEXT Q
350 NEXT P
390 IF BU + CO = 0 THEN PRINT "BullShit": GOTO 410
400 PRINT BU; "B"; CO; "C"
401 IF BU = 4 THEN PRINT "GOT THE WORD": GOTO 420
410 NEXT I
420 END

