// Aula 09 - BufLen - Variavel pre-definida do Turbo Pascal cujo valor inicial eh 126. Determina o numero maximo de carecteres lidos
// por operacoes Read.
Program aula_09;
Uses
	Crt;
Var
	Estado: String[2];
Begin
	ClrScr;
  Writeln('BufLen');
  Writeln;
	BufLen := 2;
	Write('Digite a sigla do seu estado com no maximo ', BufLen, ' caracteres: ');
	Readln(Estado);
	WriteLn(Estado);
End.