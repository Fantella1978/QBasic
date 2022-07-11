10 CLS
20 PRINT "Метод наискор. спуска"
40
60
100 PRINT "Введите число переменных": INPUT n
120 DIM x(n), y(n), g(n), d(n), l(4), ff(4)
160 PRINT "Введите начальную точку"
180 FOR i = 1 TO n: INPUT x(i): NEXT i
200 PRINT "Введите начальный шаг": INPUT l
210 CLS
250 PRINT "         Текущие значения"
300 FOR i = 1 TO n: y(i) = x(i): NEXT i
320 GOSUB 2000: GOSUB 3000: IF g0 < .000001 THEN GOTO 1200
340 FOR i = 1 TO n: d(i) = -g(i) / g0: NEXT i
360
380 l(1) = 0: ff(1) = z: zz = z
400 l(3) = l
410 FOR i = 1 TO n: x(i) = y(i) + l(3) * d(i): NEXT i
430 GOSUB 2000: ff(3) = z
440 GOSUB 3000
450 g2 = 0
460 FOR i = 1 TO n: g2 = g2 + g(i) * d(i): NEXT i
470 IF (ff(3) >= ff(1)) OR (g2 >= 0) THEN GOTO 500
480 l = 2 * l: GOTO 400
500 REM
520 l(2) = l / 2
540 FOR i = 1 TO n: x(i) = y(i) + l(2) * d(i): NEXT i
560 GOSUB 2000: ff(2) = z
600 l(4) = l * (ff(2) - .75 * ff(1) - .25 * ff(3)) / (2 * ff(2) - ff(1) - ff(3))
620 IF l(4) < 0 THEN PRINT "Внимание"
640 FOR i = 1 TO n: x(i) = y(i) + l(4) * d(i): NEXT i
660 GOSUB 2000: ff(4) = z
700 FOR j = 1 TO 3
710 FOR k = j + 1 TO 4
720 IF ff(j) <= ff(k) THEN GOTO 760
730 ll = l(j): l(j) = l(k): l(k) = ll
740 f0 = ff(j): ff(j) = ff(k): ff(k) = f0
760 NEXT k: NEXT j
800 IF ABS(l(1) - l(2)) < .05 THEN GOTO 1000
820 s1 = SGN(l(2) - l(1)): s2 = SGN(l(3) - l(1))
830 s3 = SGN(l(4) - l(1))
840 IF s1 = s2 AND s1 = -s3 THEN l(3) = l(4): ff(3) = ff(4)
860 dn = (l(2) - l(3)) * ff(1) + (l(3) - l(1)) * ff(2) + (l(1) - l(2)) * ff(3)
870 f = (ff(1) - ff(2)) / (2 * dn)
880 f = f * (l(2) - l(3)) * (l(3) - l(1))
890 l(4) = (l(1) + l(2)) / 2 + f
900 FOR i = 1 TO n: x(i) = y(i) + l(4) * d(i): NEXT i
910 GOSUB 2000: ff(4) = z
930 GOTO 700
1000 FOR i = 1 TO n: x(i) = y(i) + l(1) * d(i)
1002 y(i) = x(i): PRINT "X"; i; "="; x(i)
1005 NEXT i
1010
1020 GOSUB 2000: GOSUB 3000
1040 PRINT "F="; z
1050 INPUT eklmn
1080 l = l / 2
1100 IF g0 > .001 THEN GOTO 340
1200 PRINT "": PRINT
1220 FOR i = 1 TO n: PRINT "X"; i; "="; x(i): NEXT i
1240 PRINT "Минимум функции = "; z
1300 END
2000 z = 3.1 * x(1) - 1.1 * x(2) + EXP(.16 * x(1) ^ 2 + .13 * x(2) ^ 2)
2090 fe = fe + 1
2100 RETURN
3000 g0 = 0
3100 g(1) = 3.1 + EXP(.16 * x(1) ^ 2 + .13 * x(2) ^ 2) * .32 * x(1)
3200 g(2) = -1.1 + EXP(.16 * x(1) ^ 2 + .13 * x(2) ^ 2) * .26 * x(2)
3300
3800 FOR i = 1 TO n: g0 = g0 + g(i) * g(i): NEXT i
3810 g0 = SQR(g0)
4000 RETURN

