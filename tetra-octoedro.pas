program tetra_y_octo_edro;
uses crt;
var i :integer;
vl,ar:real;
fig:char;
procedure tetra(a:integer;var areat,volumt:real ); 
 begin
  areat:=sqr(a)*sqrt(3);
  volumt:=(sqr(a)*a)/12*sqrt(2);
 end;
procedure octo(a:integer;var areao,volumo:real);
 begin
  areao := 2 * sqr(a) * sqrt(3);
  volumo:=(sqr(a)*a/3) * sqrt(2);
 end;
 //inicio del progama principal
BEGIN
writeln('ingrese figura a calcular su area y volumen(ingrese "t" para tetraedro y "o" para octoedro ) ');
readln(fig);
writeln('ingrese  el lado de la figura');
readln(i);
case fig of
     't':
          begin
           tetra(i,ar,vl);
          end;
      'o':
          begin
           octo(i,ar,vl);
          end;
end;
writeln('el area de la figura seleccionada es de ',ar:4:2 ,' y el volumen es de ', vl:4:2);	
readkey;
END.

