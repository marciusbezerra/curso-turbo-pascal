// Aula 07 - TextBackGround e TextColor: muda a cor de fundo do texto!
//	Black = 0;
//  Blue = 1;
//  Green = 2;
//  Cyan = 3;
//  Red = 4;
//  Magenta = 5;
//  Brown = 6;
//  LightGray = 7;
//  DarkGray = 8;
//  LightBlue = 9;
//  LightGreen = 10;
//  LightCyan = 11;
//  LightRed = 12;
//  LightMagenta = 13;
//  Yellow = 14;
//  White = 15;
Program aula_07;
Uses
crt;
Begin
  Clrscr;
  Writeln('TextBackGround e TextColor');
  Writeln;
	WriteLn('TEXTO');
	TextBackGround(Green);
	WriteLn('TEXTO');
	TextBackGround(9);
	WriteLn('TEXTO');
	TextBackGround(LightGray);
	TextColor(Red);
	WriteLn('TEXTO');
	TextColor(Red + Magenta);
	WriteLn('TEXTO');
End.