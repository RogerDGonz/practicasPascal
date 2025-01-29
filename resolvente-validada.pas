program resolvente; 
        uses crt; 
        var ah,be,ce,rmas,rmenos,raiz:real;
procedure resol(a,b,c:real;var r1,r2,d:real);
begin
     if (a=0) and (b=0) then 
        writeln('la ecuacion es degenerada')
     else if (a=0) and (b<>0) then
     begin
          r1:=c/b; 
     end
     else 
     begin 
          d:=sqr(b)-4*a*c; 
          if (d>=0) then 
          begin 
               r1:=(-b+sqrt(sqr(b)-4*a*c))/(2*a); 
               r2:=(-b-sqrt(sqr(b)-4*a*c))/(2*a); 
          end 
          else 
          begin 
               r1:=-b/(2*a);
               r2:=-b-sqrt(abs(sqr(b)-4*a*c));
          end; 
     end;
end;
//inicio del programa principal
begin
writeln ('-b + √(b^2) - (4*a*c)|');
writeln('_______________________');
writeln('         2a            ');
writeln('ingrese el coeficiente a');
readln(ah);
writeln('ingrese el coeficiente b');
readln(be);
writeln('ingrese el coeficiente c ');
readln(ce);
resol(ah,be,ce,rmas,rmenos,raiz);
if (ah=0) and (be=0) then
     begin 
        writeln('ocurre una absurda');
     end 
else if (ah=0) and (be<>0) then
     begin 
          writeln('r1 = ',rmas:5:2);
     end 
     else 
     begin 
          if (raiz>=0) then
          begin 
               writeln('r1 = ',rmas:5:2);
               writeln('r2 = ',rmenos:5:2);
          end 
          else 
          begin 
               writeln('r1 = ',rmas:5:2,' + (',rmenos:5:2,'i/',2*ah:4:2,')');
               writeln('r2 = ',rmas:5:2,' - ','(',rmenos:5:2,'i/',2*ah:4:2,')');
          end; 
     end;
readkey;
end.
 
 
