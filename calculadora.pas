program CalculadoraProcedimientos;

{ Programa compatible con Turbo Pascal.
  Solicita dos numeros y muestra suma, resta, multiplicacion y division. }

uses
  Crt;

var
  Numero1, Numero2: Real;

procedure MostrarSaludo;
begin
  Writeln('Hola Mundo');
  Writeln('Calculadora basica en Turbo Pascal');
  Writeln;
end;

procedure LeerNumero(Mensaje: String; var Numero: Real);
begin
  Write(Mensaje);
  Readln(Numero);
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
  ClrScr;
  MostrarSaludo;
  LeerNumero('Ingrese el primer numero: ', Numero1);
  LeerNumero('Ingrese el segundo numero: ', Numero2);
  MostrarResultados(Numero1, Numero2);
  Writeln;
  Writeln('Presione ENTER para finalizar.');
  Readln;
end.
