10 CLS
20 REM �ணࠬ�� �襭�� �ࠢ����� ���� f(x)=0
30 REM ��⮤ ࠢ����୮�� ���᪠
40 r = 15: l = 75: s = 29: h = 3
50 PRINT "������ ��室�� ��ࠬ����:"
60 INPUT "�࠭��� ���ࢠ�� ����: X0, Xk - "; X0, Xk
70 INPUT "��ࢮ��砫�� 蠣 ���᪠: H - "; h
80 INPUT "�������� �筮���: E -"; E
90 x = X0: GOSUB 190: y = F
100 x = x + h
110 IF x > Xk THEN PRINT : PRINT "�� ���ࢠ�� �襭�� ���!": END
120 GOSUB 190: z = F
130 IF ABS(h) <= E THEN 170
140 IF y * z = 0 THEN 170
150 IF y * z < 0 THEN h = -h / 2
160 y = z: GOTO 100
170 PRINT : PRINT "��७� �ࠢ����� = "; x: END
180 REM ��蠥��� �ࠢ�����
190 F = l * COS(ATN((r / l * SIN(x))) / SQR(1 - (r / l * SIN(x)) ^ 2))
195 F = F - r * COS(x) - l + r - s + h
200 RETURN

