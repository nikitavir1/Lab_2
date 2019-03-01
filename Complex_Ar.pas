unit Complex_Ar;

interface
  type
    Complex = record
        re, im: real;
    end;

    function AddC (x,y: Complex): Complex;
    function SubC (x,y: Complex): Complex;
    function MulC (x,y: Complex): Complex;
    function DivC (x,y: Complex): Complex;

implementation
  function AddC (x,y: Complex): Complex;
  // сложение
  begin
    Result.re := x.re + y.re;
    Result.im := x.im + y.im;
  end;

  function SubC (x,y: Complex): Complex;
  // вычитание
  begin
    Result.re := x.re - y.re;
    Result.im := x.im - y.im;
  end;

  function MulC (x,y: Complex): Complex;
  // умножение
  begin
    Result.re := x.re * y.re + x.im * y.im;
    Result.im := x.re * y.im - x.im * y.re;
  end;

  function DivC (x,y: Complex): Complex;
  // деление
  var
    z: Real;

  begin
    z := sqr(y.re) + sqr(y.im);
    Result.re := (x.re * y.re + x.im * y.im) / z;
    Result.im := (x.re * y.im - x.im * y.re) / z;
  end;

end.
