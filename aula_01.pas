// Aula 01 - Tipo basicos do variaveis do Turbo Pascal
// Boolean
// Byte
// Char
// Integer
// Real
// String

// Nao permitido: 1VarBoolean, *VarReal, Var-Integer

Program aula_01;
Uses
	Crt;
Var
	VarBoolean: Boolean;
	VarByte: Byte;
	VarChar: Char;
	VarInteger: Integer;
	VarReal: Real;
	VarString: String[10];
Begin
  Clrscr;
  Writeln('Tipo basicos do variaveis');
  Writeln;
	VarBoolean := True; //Ou False
	VarByte    := 255; //0 a 255
	VarChar    := 'a'; //1 char
	VarInteger := 10; //longint (LongInt no caso desse compilador: -2147483648 a 2147483647)
	VarReal    := 10.1; //extended (LongInt no caso desse compilador: 3.4e-4932 a 1.1e4932)
	VarString  := 'MARCIUS BEZERRA';
	WriteLn(VarString); //Apenas os 10 primeiros caracteres
End.
