program OperacionesConProcedures;

{ Programa que usa varios procedure para realizar operaciones aritmeticas. }

var
  Numero1, Numero2: Real;

procedure PedirNumeros(var A, B: Real);
begin
  Write('Ingrese el primer numero: ');
  Readln(A);
  Write('Ingrese el segundo numero: ');
  Readln(B);
end;

procedure MostrarSuma(A, B: Real);
begin
  Writeln('Suma: ', A + B:0:2);
end;

procedure MostrarResta(A, B: Real);
begin
  Writeln('Resta: ', A - B:0:2);
end;

procedure MostrarMultiplicacion(A, B: Real);
begin
  Writeln('Multiplicacion: ', A * B:0:2);
end;

procedure MostrarDivision(A, B: Real);
begin
  if B = 0 then
    Writeln('Division: no se puede dividir entre cero.')
  else
    Writeln('Division: ', A / B:0:2);
end;

procedure MostrarResultados(A, B: Real);
begin
  Writeln;
  Writeln('Resultados:');
  MostrarSuma(A, B);
  MostrarResta(A, B);
  MostrarMultiplicacion(A, B);
  MostrarDivision(A, B);
end;

begin
  Writeln('Operaciones aritmeticas con varios procedures');
  Writeln;
  PedirNumeros(Numero1, Numero2);
  MostrarResultados(Numero1, Numero2);
  Writeln;
  Writeln('Presione ENTER para finalizar.');
  Readln;
end.
