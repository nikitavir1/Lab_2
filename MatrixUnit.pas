unit MatrixUnit;

interface
  type
    MatrixType = array [1..3, 1..3] of real;

  function Add(matrix1, matrix2: MatrixType): MatrixType;
  function Multiply(matrix1, matrix2: MatrixType): MatrixType;
  function ScalarMultiply(matrix: MatrixType; multiple: Real): MatrixType;
  procedure OutPut(matrix: MatrixType);

implementation

  function Add(matrix1, matrix2: MatrixType): MatrixType;
  //сложение
  var
    i, j:integer;
       m:MatrixType;

  begin
    for i:=1 to 3 do
      for j:=1 to 3 do
        m[i,j]:=matrix1[i,j]+matrix2[i,j];
    Add := m;
  end;

  function Multiply(matrix1, matrix2: MatrixType): MatrixType;
  //умножение
  var i, j, k:integer;
            m:MatrixType;

  begin
    for i:=1 to 3 do
      for j:=1 to 3 do
        begin
        m[i,j]:=0;
          for k:=1 to 3 do
            m[i,j]:=m[j,i]+matrix1[i,k]*matrix2[k,j];
        end;
    Multiply := m;
  end;


  function ScalarMultiply(matrix: MatrixType; multiple: Real): MatrixType;
  //умножение на число
  var
    i, j:integer;
       m:MatrixType;

  begin
    for i:=1 to 3 do
     for j:=1 to 3 do
      m[i,j]:=matrix[i,j]*multiple;
     ScalarMultiply := m;
  end;

  procedure OutPut(matrix: MatrixType);
  //вывод
  var i, j:integer;
  begin
    for i:=1 to 3 do
     begin
       for j:=1 to 3 do
        write(matrix[i,j], '  ');
        writeln;
     end;
  end;

end.
