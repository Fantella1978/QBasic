5 CLS
10 REM �ணࠬ�� �襭�� ��⥬� �������� �ࠢ�����
20 REM ��⮤ ����� � �롮஬ �������� �������
40 INPUT "��᫮ �ࠢ�����  N - "; n
50 DIM a(n, n), b(n), x(n)
60 FOR i = 1 TO n: FOR j = 1 TO n
70 PRINT "������ A("; i; ","; j; ")= "; : INPUT a(i, j): NEXT j
80 PRINT "������ B("; i; ")= "; : INPUT b(i): NEXT i
90 FOR i = 1 TO n - 1
95 REM �롮� �������� �������
100 l = i: FOR j = i + 1 TO n
110 IF ABS(a(j, i)) > ABS(a(l, i)) THEN l = j
120 NEXT j: IF l = i GOTO 160
130 FOR k = 1 TO n: v = a(i, k)
140 a(i, k) = a(l, k): a(l, k) = v: NEXT k
150 v = b(i): b(i) = b(l): b(l) = v
155 REM ��襭�� ��⥬� �ࠢ�����
160 FOR j = i + 1 TO n
170 a(j, i) = -a(j, i) / a(i, i): FOR k = i + 1 TO n
180 a(j, k) = a(j, k) + a(j, i) * a(i, k): NEXT k
190 b(j) = b(j) + a(j, i) * b(i): NEXT j: NEXT i
200 x(n) = b(n) / a(n, n)
210 FOR i = n - 1 TO 1 STEP -1: h = b(i)
220 FOR j = i + 1 TO n: h = h - x(j) * a(i, j): NEXT j
230 x(i) = h / a(i, i): NEXT i
240 PRINT : PRINT "��୨ ��⥬� �ࠢ�����"
250 FOR i = 1 TO n: PRINT "X("; i; ")= "; x(i)
260 NEXT i: END

