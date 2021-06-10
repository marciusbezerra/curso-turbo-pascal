// Aula 11 - For, Repeat e While: Estruturas de Repetica��o

Program aula_11;
Uses
	Crt;
Var
	i: Integer;
Begin
  Clrscr;
  Writeln('For, Repeat e While');
  Writeln;

	Writeln('For -----');

	For i := 1 to 10 do
		WriteLn(i);

	For i := 10 DownTo 1 do
		WriteLn(i);

	Writeln('Repeat -----');

	i := 1;

	Repeat
		i := i + 1; // Inc(i);
		WriteLn(i);
	Until i >= 10;

	Writeln('While -----');

	i := 1;

	While i <= 10 do
	Begin
		WriteLn(i);
		i := i + 1; // Inc(i);
	End;
End.
