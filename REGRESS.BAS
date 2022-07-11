10 REM Программа регрессии табличной зависимости
20 CLS
30 INPUT "Число точек - "; t: DIM x(t), y(t)
40 FOR i = 1 TO t: PRINT "Введите HRC("; i; "), HB("; i; ")"; : INPUT x(i), y(i): NEXT i
50 x1 = 0: x2 = 0: y1 = 0: y2 = 0: p = 0
60 FOR i = 1 TO t
70 x = x(i): y = y(i): x1 = x1 + x: y1 = y1 + y
80 x2 = x2 + x * x: y2 = y2 + y * y: p = p + x * y: NEXT i
90 b = (x1 * y1 - t * p) / (x1 * x1 - t * x2): a = (y1 - b * x1) / t
100 PRINT "HB= "; b; "*HRC "; a
102 PRINT "HRC= "; 1 / b; "*HB "; a / b
105 PRINT "При HRC=50  HB="; 50 * b + a
110 END

