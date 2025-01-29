program raloj;

uses crt;
var a,b,c,d,e,f,g,h,i,j,k,l:string;
 horas,min:integer;
 h1,h2,min1,min2:byte;
procedure reloj(ho1,ho2,minu1,minu2:integer;var a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1:string);
begin
 case ho1 of
      0:
       begin
        a1:='  _ ';
        b1:=' | |';
        c1:=' |_|';
       end;
      1:
       begin
        a1:='  ';
        b1:=' |';
        c1:=' |';
       end;
      2:
       begin
        a1:=' _ ';
        b1:=' _|';
        c1:='|_ ';
       end;
  end;
 case ho2 of
      1:
       begin
        d1:='  ';
        e1:=' |';
        f1:=' |';
       end;
      2:
       begin
        d1:=' _ ';
        e1:=' _|';
        f1:='|_ ';
       end;
      3:
       begin
        d1:=' _ ';
        e1:=' _|';
        f1:=' _|';
       end;
      4:
       begin
        d1:='   ';
        e1:='|_|';
        f1:='  |';
       end;
      5:
       begin
        d1:=' _ ';
        e1:='|_ ';
        f1:=' _|';
       end;
      6:
       begin
        d1:=' _ ';
        e1:='|_ ';
        f1:='|_|';
       end;
      7:
       begin
        d1:=' _  ';
        e1:='  | ';
        f1:='  | ';
       end;
      8:
       begin
        d1:=' _ ';
        e1:='|_|';
        f1:='|_|';
       end;
      9:
       begin
        d1:=' _ ';
        e1:='|_|';
        f1:='  |';
       end;
      0:
       begin
        d1:='  _ ';
        e1:=' | |';
        f1:=' |_|';
       end;
 end;
 case minu1 of
      1:
       begin
        g1:='  ';
        h1:=' |';
        i1:=' |';
       end;
      2:
       begin
        g1:=' _ ';
        h1:=' _|';
        i1:='|_ ';
       end;
      3:
       begin
        g1:=' _ ';
        h1:=' _|';
        i1:=' _|';
       end;
      4:
       begin
        g1:='   ';
        h1:='|_|';
        i1:='  |';
       end;
      5:
       begin
        g1:=' _ ';
        h1:='|_ ';
        i1:=' _|';
       end;
      0:
       begin
        g1:='  _ ';
        h1:=' | |';
        i1:=' |_|';
       end;
 end;
 case minu2 of
      1:
       begin
        j1:='  ';
        k1:=' |';
        l1:=' |';
       end;
      2:
       begin
        j1:=' _ ';
        k1:=' _|';
        l1:='|_ ';
       end;
      3:
       begin
        j1:=' _ ';
        k1:=' _|';
        l1:=' _|';
       end;
      4:
       begin
        j1:='   ';
        k1:='|_|';
        l1:='  |';
       end;
      5:
       begin
        j1:=' _ ';
        k1:='|_ ';
        l1:=' _|';
       end;
      6:
       begin
        j1:=' _ ';
        k1:='|_ ';
        l1:='|_|';
       end;
      7:
       begin
        j1:=' _  ';
        k1:='  | ';
        l1:='  | ';
       end;
      8:
       begin
        j1:=' _ ';
        k1:='|_|';
        l1:='|_|';
       end;
      9:
       begin
        j1:=' _ ';
        k1:='|_|';
        l1:='  |';
       end;
      0:
       begin
        j1:=' _ ';
        k1:='| |';
        l1:='|_|';
       end;
 end;
end;
//inicio del programa principal
BEGIN
writeln('introduzca la hora que desea visualizar ');
readln(horas);
writeln('ingrese los minitos que desea visualizar ');
readln(min);
h1:=horas div 10;
h2:=horas-(h1*10); 
min1:=(min div 10 );
min2:=min-(min1*10);
reloj(h1,h2,min1,min2,a,b,c,d,e,f,g,h,i,j,k,l);
textcolor(red);
writeln(a,d,'  ',g,j);
writeln(b,e,' .',h,k);
writeln(c,f,' .',i,l);
readkey;
END.

