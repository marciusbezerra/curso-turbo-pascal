// Aula 06 - InsLine: Insere uma linha onde esta o cursor, as debaixo, descem!
Program aula_06;
Uses
crt;
Begin
  Clrscr;
  Writeln('InsLine');
  Writeln;
	WriteLn('Linha 3');
	WriteLn('Linha 4');
	WriteLn('Linha 5');
	WriteLn('Linha 6');
	GotoXY(1,4);
	InsLine;
	Write('NOVA LINHA!');
	GotoXY(1,10);
	WriteLn('Nova linha inserida!');
End.
