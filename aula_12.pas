// Aula 12 - Case: Comando par Controle de FLuxo

Program aula_12;
Uses
	Crt;
Var
	EstadoCivil: Char;
Begin
  Clrscr;
  Writeln('Case');
  Writeln;

	Write('Qual seu estado Civil (c - Casado, s - Solteiro, d - Divorciado)? ');
	Readln(EstadoCivil);

	Case EstadoCivil of
		'c': WriteLn('Voce eh casado!'); // Begin End
		's': WriteLn('Voce eh solteiro!'); // Begin End
		'd': WriteLn('Voce eh divorciado!'); // Begin End
		Else WriteLn('Voce deve escolher uma das opcoes informadas!');
	End;
End.
