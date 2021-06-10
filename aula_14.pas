// Aula 14 - Arrays Multidimensionais

Program aula_14;
Uses
	Crt;
Type
	TColunas = 1..3;
	TLinhas = 1..2;
Var
	i: Integer;
	Lin, Col: Integer;
	Numeros: Array[TColunas, TLinhas] of Byte;
Begin
  Clrscr;
  Writeln('Case');
  Writeln;
	
	For lin := 1 to High(TLinhas) do
		For col := 1 to High(TColunas) do
		Begin
			Write('Informe o valor [coluna, linha] [', col, ',', lin,']: ');
			Readln(Numeros[col, lin]);
		End;
	WriteLn;
	WriteLn('Os valores informados foram: ');
	WriteLn;

	For lin := 1 to High(TLinhas) do
	Begin
		For col := 1 to High(TColunas) do
			Write(Numeros[col, lin]:5);
		WriteLn;
	End;
End.