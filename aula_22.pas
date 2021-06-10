// Aula 22 - Convertendo bytes para inteiros bits de base 2 para números de base 10
// - Nos trabalhamos com base 10, números de 0 a 9, ja o computador trabalha com números de base 2, 0 e 1 (bits)
Program aula_22;
Uses
Crt;
Var
  i: Byte;
  bits: String[8];
  valor, code: Integer;
  soma: Integer;
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

  Clrscr;
  Writeln('Convertendo bytes para inteiros');
  Writeln;
  Write('Escreva 8 bits (1 Byte) em formato binario: ');
  Readln(bits);
  bits := Concat(Copy('00000000', 1, 8 - Length(bits)), bits);
  soma := 0;
  For i := 8 Downto 1 Do
    Begin
      If (bits[i] <> '0') And (bits[i] <> '1') Then
        Begin
          Writeln('Binarios sao numeros formados por 1''s e  0''s');
          Exit;
        End
      Else
        Begin
          Val(bits[i], valor, code);
          soma := soma + (valor * BinValues[i]);
        End;
    End;
  Writeln(bits, ' = ', soma);
End.