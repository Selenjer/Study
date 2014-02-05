Program slovosochetanie;
uses crt;
var s:string;
    i,k,t:integer;
begin
    clrscr;
    write('Введите строку:');
    readln(s);
    while s[1]=' ' do
    delete(s,1,1);
    k:=length(s);
    i:=1;
    while not((s[i]=' ')or(i>k)) do
         i:=i+1;
    writeln(i-1);
    while s[i]=' ' do
    delete(s,i,1);
    k:=length(s);
    t:=1;
    while not((s[i]=' ')or(i>k)) do
     begin
         i:=i+1;
         t:=t+1;
     end;
    writeln(t-1);
    readkey;
end.