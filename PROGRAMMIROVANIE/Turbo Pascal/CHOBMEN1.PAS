program MinPerestanovokPar;
uses Crt;
label 1;
var a:array[1..1000] of word;
    n,p,m,i,b:word;
    l:integer;
begin
    Clrscr;
    randomize;
    write('Kolichestvo chisel=');
    readln(n);
    writeln;
    writeln('Nabor Chisel:');
    writeln;
    for i:=1 to n do
     begin
     a[i]:=random(100)+1;
     write(a[i],'___');
     end;
    Readkey;
    writeln;
    writeln;
    l:=0;
    For p:=1 to n do
     for i:=2 to n do
      begin
          if a[i-1]>a[i] then begin l:=l+1;a[i-1]:=a[i-1]+a[i];a[i]:=a[i-1]-a[i];a[i-1]:=a[i-1]-a[i];end;
          b:=0;
          for m:=2 to n do
           if a[m-1]>a[m] then b:=b+1;
          if b=0 then goto 1;
      end;
    1:writeln('Chislo perestanovok=',l);
    writeln;
    for i:=1 to n do
     write(a[i],'___');
    Readkey;
end.

