REM WHAT THIS PROGRAM DOES: IT ASKS FOR THE NAME AND ROLL NUMBER AND STORES IT
REM IN ONE FILE. IT CAN GIVE YOU A LIST OF THE NUMBERS ENTERED IN TH PAST AND
REM ALSO ALLOWS YOU TO SEE THE DETAILS OF SPECIFIC NAMES ETC.
10 CLS
20 DIM SHARED nam(50) AS STRING
25 DIM ROLL(50) AS INTEGER
30 COLOR 4: PRINT "                      Welcome to the Organiser"
32 PRINT
33 PRINT
40 COLOR 2: PRINT "1. I want to enter my name and roll number"
50 PRINT "2. I want to look up the list of names and roll numbers"
60 PRINT "3. I want to look up a specific name"
66 PRINT "4. Exit"
67 PRINT
70 INPUT "Enter Your Choice:"; ANS
90 ON ANS GOTO 130, 180, 234, 310
130 OPEN "d:\users\ravi\qbasic\ravi.bas" FOR APPEND AS #1
140 INPUT "What is your roll number"; ROLL
150 INPUT "What is your name"; nam(ROLL)
160 WRITE #1, ROLL, nam(ROLL)
161 PRINT "Do you want to do another(y/n)"
162 IF INKEY$ = CHR$(121) OR INKEY$ = CHR$(89) THEN 140 ELSE 163
163 IF INKEY$ = CHR$(78) OR INKEY$ = CHR$(110) THEN 170 ELSE 162
170 CLOSE #1
175 GOTO 10
180 OPEN "D:\USERS\RAVI\QBASIC\RAVI.BAS" FOR INPUT AS #1
185 i = 1
190 INPUT #1, ROLL(i), nam(i)
196 PRINT ROLL(i); nam(i)
230 IF EOL = 1 THEN CLOSE #1: SLEEP (2): GOTO 10
232 i = i + 1
233 GOTO 190
234 OPEN "D:\USERS\RAVI\QBASIC\RAVI.BAS" FOR INPUT AS #1
240 INPUT "What is the roll number"; i
270 INPUT #1, nam(i)
275 nam(i) = nameg$
280 PRINT i; nameg$
290 SLEEP (1)
300 CLOSE #1: GOTO 10
310 END








