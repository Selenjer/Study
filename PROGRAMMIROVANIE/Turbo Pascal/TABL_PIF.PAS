Program Tablizza_Pifagora;
uses crt;
var a,b,c,d,i:integer;
begin
    randomize;
    d:=0;
    for i:=1 to 10 do
     begin
         clrscr;
         a:=random(100);
         b:=random(100);
         write(a,'*',b,'=?');
         readkey;
         clrscr;
         write(a,'*',b,'=');
         read(c);
         if c=a*b then begin d:=d+1;
                               writeln('Pravilno'); end;
         readkey;
     end;
    writeln(d);
    readkey;
end.
