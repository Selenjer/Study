program n_2_fakt;
uses Crt;
var n,k,s:longint;
begin
    clrscr;
    Write('Введите число:');
    Readln(n);
    If n mod 2 = 0 then k:=2
    else k:=1;
    s:=1;
    repeat
    s:=s*k;
    k:=k+2;
    until k>n;
    write('n!!=',s);
end.
program n_2_fakt;
uses Crt;
var n,s,k:longint;
clrscr;
Write('Введите число:');
readln(n);
if n mod 2 = 0 then k:=2
else k:=1;
s:=1;
repeat
     s:=s*k;
     k:=k+2;
until k>n;
write('n!!=',s);
end.