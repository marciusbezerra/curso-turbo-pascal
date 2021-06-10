// Aula 21 - Functions e Parametros por referencia
Program aula_21;
Uses
Crt;

Var
	ValorSoma: Integer;
	ValorDivisao: Real;

function Soma(x,y: Integer): Integer;
Begin
	Soma := x + y;
End;

function Divisao(x,y: Integer; Var Resultado: Real): Boolean;
Begin
	// Divisao := y <> 0;
	if y = 0 Then
		Divisao := False
	Else
		Divisao := True;
	Resultado := x / y;
End;

Begin
  Clrscr;
  Writeln('Functions');
  Writeln;

	ValorSoma := Soma(4,4);
	WriteLn('Soma = ', ValorSoma:10);

	if Divisao(4, 2, ValorDivisao) Then //testar tambem com 4,0
		WriteLn('Divisao = ', ValorDivisao:10:3)
	Else
		WriteLn('Nao eh possivel dividir!');
End.