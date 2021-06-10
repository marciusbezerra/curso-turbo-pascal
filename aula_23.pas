// Aula 23 - Convertendo de inteiros para bytes (números de base 10 para bits de base 2)
// - Nos trabalhamos com base 10, números de 0 a 9, ja o computador trabalha com números de base 2, 0 e 1 (bits)
Program aula_23;
Uses
Crt;
Var
	i: Integer;
  Numero: Integer;
  Resto: Integer;
  Divisao: Integer;
  Retorno: String[8];
	Resultado: String[8];
	R: String[1];
Begin
  Clrscr;
  Writeln('Convertendo de inteiros para bytes');
  Writeln;
  Write('Informe um numero inteiro de 0 255: ');
  Readln(Numero);
  Repeat
    Divisao := Numero Div 2;
    //DIV Retorna o quociente inteiro da divisao
    Resto := Numero Mod 2;
    //MOD Retorna o resto da divisao
		Str(Resto, R);
    Retorno := Retorno + R;
		Numero := Divisao;
  Until Divisao = 0;
	for i := Length(Retorno) DownTo 1 do
		Resultado := Resultado + Retorno[i];
	Resultado := Concat(Copy('00000000', 1, 8 - Length(Resultado)), Resultado);
  Writeln(Resultado);
End.