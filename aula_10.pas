// Aula 10 - If: Comando par Controle de FLuxo

Program aula_10;
Uses
	Crt;
Var
	Idade: Byte;
	DeMaior: Boolean;
Begin
  Clrscr;
  Writeln('If');
  Writeln;
	
	Idade := 17;
	
	if Idade >= 18 Then
		DeMaior := True
	Else
		DeMaior := False;

//	DeMaior := Idade >= 18;

	If DeMaior {= True} Then
	Begin
		WriteLn('Resultado');
		WriteLn('Voce eh de maior de idade!');
	End
	Else
	Begin
		WriteLn('Resultado');
		WriteLn('Voce NAO eh de maior de idade!');
	End;
End.
