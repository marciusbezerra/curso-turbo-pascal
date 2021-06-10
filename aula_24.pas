// Aula 24 - Functions - Refatorando o codigo
// Fazer baseado nas aulas 22 e 23 (fazer uma copia das aulas e refatorar)
Program aula_24;
Uses
Crt;
Var
  Numero: Integer;
	Resultado1: String[8];
	Bits: String[8];
	Resultado2: Byte;

Function IntToByteStr(ANumero: Byte): String;
Var
	i: Integer;
	Divisao: Integer;
	Resto: Integer;
	Retorno: String[8];
	Resultado: String[8];
	R: String[1];
Begin
	Retorno := ''; // Nao esquecer de zerar as variaveis
	Resultado := ''; // Nao esquecer de zerar as variaveis
  Repeat
    Divisao := ANumero Div 2;
    Resto := ANumero Mod 2;
		Str(Resto, R);
    Retorno := Retorno + R;
		ANumero := Divisao;
  Until Divisao = 0;
	for i := Length(Retorno) DownTo 1 do
		Resultado := Resultado + Retorno[i];
	Resultado := Concat(Copy('00000000', 1, 8 - Length(Resultado)), Resultado);
	IntToByteStr := Resultado; 
End;

function ByteStrToInt(ABits: String; Var Resultado: Byte): Boolean;
Var
  i: Byte;
  Valor, Code: Integer;
  BinValues: Array[1..8] Of Integer;
Begin
	BinValues[1] := 128;
	BinValues[2] := 64;
	BinValues[3] := 32;
	BinValues[4] := 16;
	BinValues[5] := 8;
	BinValues[6] := 4;
	BinValues[7] := 2;
	BinValues[8] := 1;
  ABits := Concat(Copy('00000000', 1, 8 - Length(ABits)), ABits);
	if Length(ABits) > 8 Then
	Begin
    Writeln('Bytes possuem 8 bits');
  	ByteStrToInt := False;
		Exit;
	End;
  Resultado := 0;
  For i := 8 Downto 1 Do
    Begin
      If (ABits[i] <> '0') And (ABits[i] <> '1') Then
        Begin
          Writeln('Binarios sao numeros formados por 1''s e  0''s');
          ByteStrToInt := False;
					Exit;
        End
      Else
        Begin
          Val(ABits[i], Valor, Code);
          Resultado := Resultado + (Valor * BinValues[i]);
        End;
    End;
	ByteStrToInt := True;
End;
	
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