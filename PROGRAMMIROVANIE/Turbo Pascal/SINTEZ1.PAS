program Man;
uses Crt,graph;
label 1,2;
var b,a:integer;
    i:word;
    ch:array[1..1024] of word;
begin
    a:=detect;
    b:=detect;
    initGraph(a,b,'c:\bp\bgi');
    i:=0;
    repeat
         readkey;
         i:=i+1;
         2:case readkey of
            'w':begin ch[i]:=131;goto 1;
                end;
            'e':begin ch[i]:=147;goto 1;
                end;
            'r':begin ch[i]:=165;goto 1;
                end;
            't':begin ch[i]:=175;goto 1;
                end;
            'y':begin ch[i]:=196;goto 1;
                end;
            'u':begin ch[i]:=220;goto 1;
                end;
            'i':begin ch[i]:=247;goto 1;
                end;
         end;
         1:if (readkey='w')or(readkey='e')or(readkey='r')or(readkey='t')or(readkey='y')or(readkey='u')or(readkey='i')
            then begin i:=i+1; goto 2; end
         else begin
         while i>=1 do
          begin
              sound(ch[i]);
              delay(65000);
              nosound;
              i:=i-1;
          end;
         write('продолжайте');
         clrscr;end;
    until readkey=#13;
    CloseGraph;
end.