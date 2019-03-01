program home_work;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  MatrixUnit in 'MatrixUnit.pas';

var
 m, m1, m2:MatrixType;
 i, j:integer;

begin
randomize;
for i:=1 to 3 do
  for j:=1 to 3 do
    begin
      m1[i,j]:=random(10);
      m2[i,j]:=random(10);
    end;
writeln('First Matr:');
OutPut(m1);
writeln('Second Matr:');
OutPut(m2);
m:=Add(m1, m2);
writeln('Result Add:');
OutPut(m);
m:=Multiply(m1, m2);
writeln('Result Mul:');
OutPut(m);
m:=ScalarMultiply(m1, 5);
writeln('Result m1 Mul 5:');
OutPut(m);

read(i);
end.
