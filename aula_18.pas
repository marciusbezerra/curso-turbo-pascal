// Aula 18 - Tipo Set - Conjuntos (Iguais matematicos)
Program aula_18;
Uses
Crt;
Type
//	TCarros = Set of (fiesta, palio, gol, bmw);
//	TCaracteres = Set of Char;
//	TMaiusculas = Set of 'A'..'Z';
	TDigitos = Set of 0..9;
Var
	i: Byte;
	a: TDigitos;
	b: TDigitos;
	c: TDigitos;
Begin
  Clrscr;
  Writeln('Tipo Set');
  Writeln;
	
	a := [1,2,3];
	b := [2,3,4,5];
	
	c := a + b; // Uniao
	For i := 0 to 9 do if i in c Then Write(i, ' '); WriteLn;

	c := a * b; // Intersacao
	For i := 0 to 9 do if i in c Then Write(i, ' '); WriteLn;

	c := a - b; // Diferenca - O que esta em a e nao esta em b
	For i := 0 to 9 do if i in c Then Write(i, ' '); WriteLn;

	// a = b - os conjutos sao iguais
	// a <> b - os conjutos sao diferentes
	// a >= b - todos os elementos de b estao em a
	// a <= b = todos os elementos de a estao em b
End.