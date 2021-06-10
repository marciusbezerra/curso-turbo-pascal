// Aula 08 - Window, WhereX, WhereY : Define uma janela usando um ponto inicial (x1, y1) e um final (x2, y2), os comandos
// ClrScr, Write, WriteLn agem somente nessa area e o GotoXY usa como referencia o ponto inicial!
// WhereX e WhereY mostram onde o cursor se encontra
Program aula_08;
Uses
crt;
Begin
	ClrScr;
  Writeln('Window, WhereX, WhereY');
  Writeln;
	Window(15,15,60,20);
	ClrScr;
	WriteLn('O cursor esta agora em ', WhereX, ',', WhereY);
End.
