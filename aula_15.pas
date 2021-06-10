// Aula 15 - Resumo e Fixacao do que foi visto
Program aula_15;
Uses
Crt;
Const
  NUM_MAX_COLUNAS = 20;
  NUM_MAX_LINHAS = 10;
Var
	i, j: Integer;
	NumeroDeLinhas, NumeroDeColunas: Integer;
	FatorMultiplicacao, PosicaoMultiplicar: Integer;
	ColunaOuLinha: Char;
	Elemento: Array[1..NUM_MAX_LINHAS, 1..NUM_MAX_COLUNAS] of Integer; // Se for 3 dimencoes, pode ser chamado de Matriz
Begin
  Clrscr;
  Writeln('Resumo e Fixacao do que foi visto');
  Writeln;
  Repeat
    Write('Numero de linhas da matriz: ');
    Readln(NumeroDeLinhas);
  Until NumeroDeLinhas <= NUM_MAX_LINHAS;
  Repeat
    Write('Numero de colunas da matriz: ');
    Readln(NumeroDeColunas);
  Until NumeroDeColunas <= NUM_MAX_COLUNAS;
  Write('Fator para multiplicacao: ');
  Readln(FatorMultiplicacao);
  Repeat
    Write('Multiplicar coluna ou linha (c/l)? ');
    Readln(ColunaOuLinha);
  Until (ColunaOuLinha = 'c') Or (ColunaOuLinha = 'l');
	
  If ColunaOuLinha = 'c' Then
    Repeat
      Write('Numero da coluna a multiplicar: ');
      Readln(PosicaoMultiplicar);
    Until PosicaoMultiplicar <= NumeroDeColunas
  Else
    Repeat
      Write('Numero da linha a multiplicar: ');
      Readln(PosicaoMultiplicar);
    Until PosicaoMultiplicar <= NumeroDeLinhas;
  Writeln;
	TextBackGround(7);
	TextColor(15+16);
	GotoXY(24, 7);
	For i := 1 to NumeroDeLinhas do
		For j := 1 to NumeroDeColunas do
			Begin
				GotoXY(4*j,(i*2)+8);
				Write('__');
			End;
	TextBackGround(0);
	TextColor(13);
	For i := 1 to NumeroDeLinhas do
		For j := 1 to NumeroDeColunas do
			Begin
				GotoXY(4*j,(i*2)+8);
				Read(Elemento[i,j]);
				GotoXY(4*j,(i*2)+8);
			End;
	if ColunaOuLinha = 'c' Then
		For i := 1 to NumeroDeColunas do
			Elemento[i,PosicaoMultiplicar] := Elemento[i,PosicaoMultiplicar] * FatorMultiplicacao
	else 
		For i := 1 to NumeroDeLinhas do
			Elemento[PosicaoMultiplicar,i] := Elemento[PosicaoMultiplicar, i] * FatorMultiplicacao;
	TextBackGround(0);
	TextColor(15 + 16);
	GotoXY(24,7);
	ClrScr;
	Write('RESULTADO FINAL');
	TextColor(13);
	For i := 1 to NumeroDeLinhas do
		For j := 1 to NumeroDeColunas do
			Begin
				GotoXY(4*j,(i*2)+8);
				Write(Elemento[i,j]);
			End;
End.