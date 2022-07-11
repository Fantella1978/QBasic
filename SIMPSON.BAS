10 CLS
20 REM Программа нахождения определенного инеграла
30 REM по методу Симпсона с заданной точностью
50 PRINT "Введите пределы интегрирования: "
60 INPUT "X0="; x0
70 INPUT "Xk="; xk
80 INPUT "Введите количество пар участков: "; m
90 INPUT "Заданная точность E="; e
100 REM Интегрируемая функция
110 DEF fny (x) = COS(3.14 * x * x) / SQR(.25 + 2 * x * x)
120 n = 2 * m: GOSUB 190: d = i
130 n = 2 * n: GOSUB 190
140 IF ABS(d - i) > e THEN d = i: GOTO 130
150 PRINT "Шаг интегрирования, H="; h
160 PRINT "Значение интеграла, I="; i
170 END
180 REM Подпрограмма "INT"
190 s = fny(x0) + fny(xk)
200 x = x0: c = 1: h = (xk - x0) / n
210 FOR k = 1 TO n - 1: x = x + h
220 s = s + (3 + c) * fny(x): c = -c
230 NEXT k: i = h * s / 3
240 RETURN

