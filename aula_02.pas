// Aula 02 - Write, WriteLn e Readln
Program aula_02;
Uses
Crt;
Var
	Nome1, Nome2: String[20];
	Numero1, Numero2: Real;
Begin
	ClrScr; //<== LIMPA A TELA. ClrEol limpar o cursor ate o final da linha
  WriteLn('Write, WriteLn e Readln');
	WriteLn;
	Write('Escreva seu nome: ');
	ReadLn(Nome1);
	Write('Escreva um numero: ');
	Readln(Numero1);
	Write('Escreva seu nome: ');
	Readln(Nome2);
	Write('Escreva um numero: ');
	Readln(Numero2);
	WriteLn(Nome1:21,'=', Numero1:20:2);
	WriteLn(Nome2:21,'=', Numero2:20:2);
End.