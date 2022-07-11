10 CLS
20 REM Программа решения уравнения вида f(x)=0
30 REM Метод равномерного поиска
40 r = 15: l = 75: s = 29: h = 3
50 PRINT "Введите исходные параметры:"
60 INPUT "Границы интервала корня: X0, Xk - "; X0, Xk
70 INPUT "Первоначальный шаг поиска: H - "; h
80 INPUT "Заданная точность: E -"; E
90 x = X0: GOSUB 190: y = F
100 x = x + h
110 IF x > Xk THEN PRINT : PRINT "На интервале решений нет!": END
120 GOSUB 190: z = F
130 IF ABS(h) <= E THEN 170
140 IF y * z = 0 THEN 170
150 IF y * z < 0 THEN h = -h / 2
160 y = z: GOTO 100
170 PRINT : PRINT "Корень уравнения = "; x: END
180 REM Решаемое уравнение
190 F = l * COS(ATN((r / l * SIN(x))) / SQR(1 - (r / l * SIN(x)) ^ 2))
195 F = F - r * COS(x) - l + r - s + h
200 RETURN

