// Aula 16 - Tipo Record
Program aula_16;
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
  Writeln('Tipo Record');
  Writeln;
	i := 0;
	Repeat
		Inc(i);
		Write('Nome: '); Readln(c[i].Nome);
		if c[i].Nome = '' Then goto Fim;
		Write('Fone: '); Readln(c[i].Fone);
		Write('Sexo: '); Readln(c[i].Sexo);
		c[i].Id := i;
Fim:
	Until (c[i].Nome = '') or (i = 20);
	
	WriteLn; WriteLn('Listados'); WriteLn;
	
	WriteLn('Id':5, 'Nome':35, 'Fone':20, 'Sexo':5);
	For x := 1 to i Do
		if c[x].Id > 0 Then
		WriteLn(c[x].Id:5, c[x].Nome:35, c[x].Fone:20, c[x].Sexo:5);
End.