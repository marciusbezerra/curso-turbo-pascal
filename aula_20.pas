// Aula 20 - Procedures - Declaracao Forward
Program aula_20;
Uses
Crt;

Procedure Linha; Forward;

procedure Soma(x,y: Integer);
Begin
	Linha;
	WriteLn(x + y);
End;

Procedure Linha;
Var
	i: Byte;
Begin
	For i := 1 to 40 Do
		Write('-');
	WriteLn;
End;

Begin
  Clrscr;
  Writeln('Declaracao Forward');
  Writeln;

	Soma(4,4);
End.