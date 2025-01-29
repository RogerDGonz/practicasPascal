program nota_de_est;
uses crt;
var
Nest,Cest:integer;
me,pe:string;
ph,em:real;
procedure est(cate,ne:integer;var promh,edadm:real;var prm,prp:string);
var
mp,pp,prom:real;
acm,ach,edad,nota,i,x:integer;
gen:char;
nombre:string;
begin
 mp:=-99999999;
 pp:=+99999999;
 ach:=0;
 acm:=0;
 for i:=1 to cate do
  begin
     prom:=0;
     writeln('escriba el genero del estudiante "m" para masculino y "f" para femenino ');
     readln(gen);
     writeln('escriba el nombre del estudiante ',i);
     read(nombre);
     if (gen='m') then
         ach:=ach+1
     else
         acm:=acm+1;
     writeln('escriba la edad del estudiante ',nombre);
     readln(edad);
     for x:=1 to ne do
      begin
         writeln('ingrese la nota ',x,' del estudiante ',nombre );
         read(nota);
         prom:=nota+prom;
      end;
     prom:=prom/ne;
     if gen='m' then
        promh:=prom+promh/ach
     else
        edadm:=edad+edad/acm;
     if prom<pp then
      begin
        pp:=prom;
        prp:=nombre;
      end;
     if prom>mp then
      begin
        mp:=prom;
        prm:=nombre;
      end;
end;
end;
//inicio del programa principal
BEGIN
writeln('ingrese cantidad de estudiantes que ecursaron la clase');
readln(Cest);
writeln('ingrese la cantidad de evaluaciones vista en el curso ');
readln(Nest);
est(Cest,Nest,ph,em,me,pe);
writeln(' el promedio de los hombres es de ',ph:4:2,' promedio de edad de las mujeres es de ',em:4:2,'el estudiante con el promedio mas alto es: ',me,' y el estudiante de peor nota es  ',pe);
readkey;
END.

