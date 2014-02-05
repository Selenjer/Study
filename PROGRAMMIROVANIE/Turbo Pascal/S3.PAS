program s3;
uses crt;
var a,b:array[1..50] of integer;
    k,j,i:byte;
begin
    clrscr;
    randomize;
    writeln('massiv A:');
    for i:=1 to 50 do
     begin
         a[i]:=random(24)-12;
         write(a[i],' ');
     end;
    readkey;
    writeln;
    k:=1;
    writeln('massiv B:');
    for j:=1 to 3 do
     begin
      for i:=1 to 50 do
       case j of
       1:if a[i]=0 then begin b[k]:=a[i];write(b[k],' ');k:=k+1;end;
       2:if a[i]>0 then begin b[k]:=a[i];write(b[k],' ');k:=k+1;end;
       3:if a[i]<0 then begin b[k]:=a[i];write(b[k],' ');k:=k+1;end;
       end;
     end;
    readkey;
end.