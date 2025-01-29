program media_factorial;

uses crt;
var 
mayor,menor,facto,cant:integer;
function factorial(factores,nfacto:integer):real;
begin
factorial:=factores/nfacto; 
end;
procedure est(var may,men,fac,nfac:integer);
var 
num,acuf,i:integer;
begin
may:=-9999;
men:=9999;
fac:=0;
nfac:=0;
repeat
  acuf:=1;
  writeln('ingrese un numero para finalizar la secuencia ingrese 0 ');
  readln(num);
  if num<>0 then begin
  if (num>may) then 
     may:=num;
  if (num<men) then 
     men:=num;
  nfac:=nfac+1;
  for i:=1 to num do
      acuf:=acuf*i;          
  fac:=fac+acuf;
 end;
until num=0; 
end;

//inicio del programa principal
BEGIN
est(mayor,menor,facto,cant);
writeln('el numero mayor de la secuencia es: ',mayor,' el numero menor de la secuencia es: ',menor);
writeln('la media de los factoriales introducidos es de ',factorial(facto,cant):4:2);
readkey;	
	
END.

