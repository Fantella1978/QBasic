10 CLS
20 REM Программа решения системы дифференциальных уравнений
30 REM методом Рунге -Кутта 4-го порядка
50 REM Исходные данные
60 n = 2: e = 1
65 PRINT "     t,c           Fi,рад              t,c            Fi,рад"
66 PRINT "---------------------------------------------------------------"
70 DIM y(n), a(n), k(n), f(n), w(n)
80 h = .01
90 x = 0
110 w(1) = 0: y(1) = w(1): w(2) = 2: y(2) = w(2)
120 xk = .3
130 GOSUB 250: FOR j = 1 TO n: u = h * f(j)
140 k(j) = u: y(j) = w(j) + u / 2: NEXT j
150 x = x + h / 2: GOSUB 250: FOR j = 1 TO n
160 u = h * f(j): k(j) = k(j) + 2 * u
170 y(j) = w(j) + u / 2: NEXT j
180 GOSUB 250: FOR j = 1 TO n: u = h * f(j)
190 k(j) = k(j) + 2 * u: y(j) = w(j) + u: NEXT j
200 x = x + h / 2:
205 IF e = 1 THEN PRINT USING "#.##"; TAB(5); x;  ELSE PRINT USING "#.##"; TAB(40); x; : GOSUB 250
210 FOR j = 1 TO n: y(j) = w(j) + (k(j) + h * f(j)) / 6
230 w(j) = y(j): NEXT j:
231 IF e = 1 THEN PRINT USING "#.######"; TAB(20); y(1);  ELSE PRINT USING "#.######"; TAB(55); y(1);
234 e = e + 1
235 IF e = 3 THEN PRINT : e = 1
240 IF x >= xk - h THEN END ELSE GOTO 130
250 f(1) = y(2)
255 IF y(1) < .3 THEN f(2) = 50000 / 6000 * (1 - x / .3) ELSE f(2) = 0
260 RETURN
270 END

