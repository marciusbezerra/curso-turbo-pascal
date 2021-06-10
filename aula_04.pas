// Aula 04 - Delline: Elimina a linha em que esta o cursor, as linhas debaixo, sobem
Program aula_04;
Uses
	Crt;
Begin
	ClrScr;
	WriteLn('Delline');
	WriteLn;
	WriteLn('Linha 3');
	WriteLn('Linha 4');
	WriteLn('Linha 5');
	WriteLn('Linha 6');
	GotoXY(1, 4);
	Delline;
	GotoXY(1, 10);
	WriteLn('Linha 4 excluida');
End.