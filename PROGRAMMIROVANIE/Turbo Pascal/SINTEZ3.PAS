program slush;
uses Crt;
label 1;
type Complex=record
      t,me:integer;
             end;
     Mas=array[1..2048] of Complex;
var z:mas;
    i:word;
    k:byte;
    f:text;
begin
    clrscr;
    textcolor(5);
    TextBackGround(2);
    1:writeln('Будете слушать:да(1),нет(2):');
    readln(k);
    if (k<1) or (k>2) then begin writeln('Введите снова:');goto 1; end;
    clrscr;
    textcolor(13);
    TextBackGround(6);
    if k=1 then
      begin assign(f,'c:\bp\bin\t\mu2.txt');
                      reset(f);
                      i:=1;
                      while not eof(f) do
                       begin
                        readln(f,z[i].me);
                        if eof(f) then z[i].t:=100;
                        readln(f,z[i].t);
                        sound(z[i].me);
                        delay(z[i].t);
                        nosound;
                        i:=i+1;
                       end;
                      close(f);
      end;
end.
