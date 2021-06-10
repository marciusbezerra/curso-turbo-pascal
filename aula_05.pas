// Aula 05 - Labels e Goto: Comando par Controle de FLuxo

Program aula_05;
Uses
	Crt;
Label
	Inicio;
Var
	i: Integer;
Begin
  Clrscr;
  Writeln('Labels e Goto');
  Writeln;

	i := 0;

	Inicio:

	i := i + 1;
	// Inc(i);
	WriteLn(i);

	if i < 10 Then Goto Inicio;

End.
