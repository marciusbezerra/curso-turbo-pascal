// Aula 26 - Functions - Refatorando o codigo
// Fazer baseado na aula 24 - apagar as functions e fazer uses da unit aula_25
Program aula_24;
Uses
	Crt, aula_25; // fazer use da aula_25
Var
  Numero: Integer;
	Resultado1: String[8];
	Bits: String[8];
	Resultado2: Byte;
	
Begin
  Clrscr;
  Writeln('Functions - Refatorando o codigo');
  Writeln;
  Write('Informe um numero inteiro de 0 255: ');
  Readln(Numero);
	Resultado1 := IntToByteStr(Numero);
  Writeln('Sua representacao em byte: ', Resultado1);

	Write('Escreva 8 bits (1 Byte) em formato binario: ');
  Readln(Bits);
	if ByteStrToInt(Bits, Resultado2) Then
		Writeln('Sua representacao em numero: ', Resultado2);
End.