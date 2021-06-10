// Aula 27 - Arquivos

Program aula_27;
Uses
	Crt;
Type
	TPessoa = Record
		Nome: String[20];
		Idade: Byte;
	End;
	Frase = String[80];
Var
	Arquivo: File of TPessoa;
	P: TPessoa;
	Op: Char;

Procedure Linha;
Var
	i: Byte;
Begin
	For i := 1 to 80 Do Write('-');
End;

Procedure NoCentro(Const S: Frase);
Var
	x: Byte;
Begin
	x := 40 + (Length(S)) Div 2;
	WriteLn(S:x);
End;

Procedure InserirRegistros;
Var
	Resposta: Char;
Begin
	ClrScr;
	P.Nome := '';
	Linha;
	NoCentro('CADASTRO DE PESSOAS');
	Reset(Arquivo);
	{ FileSize numero de registros no arquivo. Seek posiciona o cursor no final do arquivo, nesse caso }
	Seek(Arquivo, FileSize(Arquivo));
	Linha;
	Resposta := 's';
	While Resposta = 's' Do
	Begin
		GotoXY(1,5); ClrEOL;
		GotoXY(1,6); ClrEOL;
		GotoXY(1,5);
		//BufLen := 20;
		Write('Nome da Pessoa: ');
		Readln(P.Nome);
		//BufLen := 2;
		ClrEOL;
		Write('Idade da Pessoa: ');
		Readln(P.Idade);
		Linha;
		Write(Arquivo, P);
		Write('Inserir mais? '); ClrEOL;
		Readln(Resposta);
	End;
	Close(Arquivo);
	// BufLen := 126;
End;

Procedure ListarRegistros;
Begin
	Reset(Arquivo);
	ClrScr;
	Linha;
	WriteLn('NOME':15, 'IDADE':18);
	Linha;
	While not Eof(Arquivo) Do
	Begin
		Read(Arquivo, P);
		WriteLn(P.Nome:20, P.Idade:5);
	End;
	Linha;
	Close(Arquivo);
	Write('Pressione algo...');
 Repeat Until KeyPressed;
End;

Procedure PesquisaPorNome;
Var
	Nome: String[20];
Begin
	Reset(Arquivo);
	Nome := '_';
	While Nome <> '' Do
	Begin
		ClrScr;
		Linha;
		NoCentro('PESQUISA POR NOME');
		Linha;
		Write('Nome: ');
		Readln(Nome);
		if Nome <> '' Then
		Begin
			Linha;
			Seek(Arquivo, 0);
			While Not Eof(Arquivo) Do
			Begin
				Read(Arquivo, P);
				if Pos(Nome, P.Nome) > 0 Then
					WriteLn(P.Nome:20, P.Idade:5);
			End;
			Linha;
			Write('Pressione algo...');
			Repeat Until KeyPressed;
		End;
	End;
	Close(Arquivo);
End;

Begin
  Clrscr;
  Writeln('Arquivos');
  Writeln;
	{$I-}  {Diretiva que indica que quem ira tratar erros de IO eh o desenvolvedor}
	Assign(Arquivo, 'dados.dat');
	Reset(Arquivo);
	If IOResult <> 0 Then
		ReWrite(Arquivo);
	Close(Arquivo);
	{$I+}  {Diretiva que indica que quem ira tratar erros de IO eh o desenvolvedor}
	Repeat
	  Clrscr;
	  NoCentro('Aula: Arquivos');
	  NoCentro('GERENCIADOR DE LISTA DE PESSOAS');
		NoCentro('Por Marcius Bezerra');
		Linha;
		GotoXY(24,12); WriteLn('1 - Sair do Programa');
		GotoXY(24,14); WriteLn('2 - Inserir Registros');
		GotoXY(24,16); WriteLn('3 - Listar Registros');
		GotoXY(24,18); WriteLn('4 - Pesquisa Por Nome');
		GotoXY(24,10); WriteLn('SUA ESCOLHA: ');
		Repeat
			GotoXY(38,10);
			Op := ReadKey;
		Until (Op in ['1'..'4']);
		Case Op Of
			'2': InserirRegistros;
			'3': ListarRegistros;
			'4': PesquisaPorNome;
		End;
	Until Op = '1';
	ClrScr;
	GotoXY(33,12); WriteLn('Bye Bye......');
End.