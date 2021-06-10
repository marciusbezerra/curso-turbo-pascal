// Aula 19 - Procedures - Sub-Programas
// Tomar como base a aula 18!
Program aula_19;
Uses
Crt;
Type
	TDigitos = Set of 0..9;
Var // Tem escopo global
	i: Byte;
	a: TDigitos; 
	b: TDigitos;
	c: TDigitos;

Procedure PrintSet(ASet: TDigitos); // passagem de parametros
Var // tem escopo visivel dentro da procedure
	s: String;
	setStr: String;
Begin
	s := ''; // eh preciso zerar as variaveis
	setStr := '';
	Write('[');
	For i := 0 to 9 do
		If i in c Then
		Begin
			Str(i, s);
			setStr := setStr + s + ',';
		End;
	setStr := Copy(setStr, 1, Length(setStr) - 1);
	Write(setStr);	
	Write(']');
	WriteLn;
End;
	
Begin
  Clrscr;
  Writeln('Procedures');
  Writeln;
	
	a := [1,2,3];
	b := [2,3,4,5];
	
	c := a + b; 
	PrintSet(c);

	c := a * b; 
	PrintSet(c);

	c := a - b; 
	PrintSet(c);
End.