10 CLS
60 INPUT "Число уравнений N="; n
70 DIM a(n, n), b(n), x(n), f(n)
80 INPUT "Максимальное число итераций "; m
90 INPUT "Относительная погрешность "; e: s = 0
100 PRINT "Начальное приближение корней:"
110 FOR i = 1 TO n: PRINT "X("; i; ")="; : INPUT x(i): NEXT i
120 GOSUB 390: FOR i = 1 TO n: b(i) = -f(i): NEXT i
130 FOR j = 1 TO n: x = x(j): h = e * ABS(x): IF h = 0 THEN h = e
140 x(j) = x + h: GOSUB 390: FOR i = 1 TO n
150 a(i, j) = (f(i) + b(i)) / h: NEXT i: x(j) = x: NEXT j
160 s = s + 1: IF s = m + 1 THEN PRINT "Число итераций="; s: STOP
170 REM Подпрограмма Gauss
180 FOR i = 1 TO n - 1
190 l = i: FOR j = i + 1 TO n
200 IF ABS(a(i, j)) > ABS(a(l, i)) THEN l = j
210 NEXT j: IF l = i GOTO 240
220 FOR k = 1 TO n: v = a(i, k)
230 a(i, k) = a(l, k): a(l, k) = v: NEXT k
240 FOR j = i + 1 TO n
250 a(j, i) = -a(j, i) / a(i, i): FOR k = i + 1 TO n
260 a(j, k) = a(j, k) + a(j, i) * a(i, k): NEXT k
270 b(j) = b(j) + a(j, i) * b(i): NEXT j: NEXT i
280 f(n) = b(n) / a(n, n)
290 FOR i = n - 1 TO 1 STEP -1: h = b(i)
300 FOR j = i + 1 TO n: h = h - f(j) * a(i, j): NEXT j
310 f(i) = h / a(i, i): NEXT i: r = 0
320 FOR i = 1 TO n: x(i) = x(i) + f(i)
330 IF ABS(f(i) / x(i)) > e THEN r = 1
340 NEXT i: IF r = 1 GOTO 120
350 PRINT : PRINT "Положение клети"
360 PRINT "Xb= "; x(2)
370 PRINT "Число итераций= "; s: STOP
390 f(1) = .225 * SQR(1 - SIN(x(1)) * SIN(x(1))) + 1.85 * SQR(1 - SIN(.1) * SIN(.1)) - x(2)
400 f(2) = .225 * SIN(x(1)) + 1.85 * SIN(.1) - .2
410 RETURN
420 END


