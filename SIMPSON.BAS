10 CLS
20 REM �ணࠬ�� ��宦����� ��।�������� ����ࠫ�
30 REM �� ��⮤� ����ᮭ� � �������� �筮����
50 PRINT "������ �।��� ��⥣�஢����: "
60 INPUT "X0="; x0
70 INPUT "Xk="; xk
80 INPUT "������ ������⢮ ��� ���⪮�: "; m
90 INPUT "�������� �筮��� E="; e
100 REM ��⥣��㥬�� �㭪��
110 DEF fny (x) = COS(3.14 * x * x) / SQR(.25 + 2 * x * x)
120 n = 2 * m: GOSUB 190: d = i
130 n = 2 * n: GOSUB 190
140 IF ABS(d - i) > e THEN d = i: GOTO 130
150 PRINT "��� ��⥣�஢����, H="; h
160 PRINT "���祭�� ��⥣ࠫ�, I="; i
170 END
180 REM ����ணࠬ�� "INT"
190 s = fny(x0) + fny(xk)
200 x = x0: c = 1: h = (xk - x0) / n
210 FOR k = 1 TO n - 1: x = x + h
220 s = s + (3 + c) * fny(x): c = -c
230 NEXT k: i = h * s / 3
240 RETURN

