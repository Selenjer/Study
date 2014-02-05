Program N1;
uses crt;
var s:string;
    l,i:integer;
begin
    clrscr;
    write('Vvedite slovo:');
    readln(s);
    while s[1]=' ' do
     delete(s,1,1);
    l:=length(s);
    clrscr;
    for i:=1 to l do
writeln('                                    ',s[i]);
    readkey;
end.

