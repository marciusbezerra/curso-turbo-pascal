// Aula 03 - Gotoxy
Program aula_03;
Uses
	Crt;
Var
	x,y: Byte;
Begin
	ClrScr;
	WriteLn('Gotoxy');
	WriteLn;
	GotoXY(10,2);
	Write('Coluna 10, linha 2:');
	x := 40;
	y := 10;
	GotoXY(x,y);
	Write('Coluna ', x, ', linha ', y);
End.