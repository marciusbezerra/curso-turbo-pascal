// Aula 13 - Arrays Unidimensionais

Program aula_13;
Uses
	Crt;
Type
	TIntervalo = 1..10;
Var
	i: Integer;
	//Numeros: Array[TIntervalo] of Integer;
	Numeros: Array[1..10] of Integer;
Begin
  Clrscr;
  Writeln('Case');
  Writeln;
	
	//For i := 1 to 10 do
	For i := 1 to High(Numeros) do
		Numeros[i] := i;

  //For i := 1 to 10 do
	For i := 1 to High(Numeros) do
		WriteLn('Numeros[', i, '] = ', Numeros[i]);
End.