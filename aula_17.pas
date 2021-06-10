// Aula 17 - Declaracao With - Evitar repeticoes do variavel do record
Program aula_17;
Uses
Crt;
Type
	TContato = Record
		Id: Word; //0..65535
		Nome: String[30];
		Fone: String[15];
		Sexo: Char;
	End;
Label
	Fim;
Var
	i, x: Integer;
	c: Array[1..20] of TContato;
Begin
  Clrscr;
  Writeln('Declaracao With');
  Writeln;
	i := 0;
		Repeat
			Inc(i);
			With c[i] do
			Begin
				Write('Nome: '); Readln(Nome);
				if Nome = '' Then goto Fim;
				Write('Fone: '); Readln(Fone);
				Write('Sexo: '); Readln(Sexo);
				Id := i;
			End;
Fim:
		Until (c[i].Nome = '') or (i = 20);

	WriteLn; WriteLn('Listados'); WriteLn;
	
	WriteLn('Id':5, 'Nome':35, 'Fone':20, 'Sexo':5);
	For x := 1 to i Do
		With c[x] Do
			if Id > 0 Then
				WriteLn(Id:5, Nome:35, Fone:20, Sexo:5);
End.