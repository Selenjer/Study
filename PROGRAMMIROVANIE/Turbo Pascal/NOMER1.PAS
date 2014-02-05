program s1;
uses crt;
var a:array[1..50] of byte;
    max,i,kolichestvo:byte;
begin
 clrscr;
 randomize;
 max:=0;
 for i:=1 to 50 do
  begin
      a[i]:=random(20);
      write(a[i],'  ');
      if max<a[i] then max:=a[i];
  end;
 writeln;
 writeln('max=',max);
 readkey;
 kolichestvo:=0;
 for i:=1 to 50 do
  begin
      if a[i]>max/2 then kolichestvo:=kolichestvo+1;
  end;
 writeln('kolichestvo=',kolichestvo);
 readkey;
end.

