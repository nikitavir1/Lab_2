program otladka_coml;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Complex_Ar in 'Complex_Ar.pas';

var
  x, y, z:Complex;
begin
  x.re:=1; y.re:=2;
  x.im:=3; y.im:=4;
  z:=AddC(x,y);
  writeln(z.re,'   ',z.im);
  z:=SubC(x,y);
  writeln(z.re,'   ',z.im);
  z:=MulC(x,y);
  writeln(z.re,'   ',z.im);
  z:=DivC(x,y);
  writeln(z.re,'   ',z.im);

read(x.re);
end.
