program Man;
uses Crt,graph;
label 1,2,3,4;
var i,l:word;
    k:byte;
    ch:array[1..1024] of word;
    cr:word;
    f:text;
begin
    clrscr;
    randomize;
    i:=0;
    textcolor(5+blink);
    TextBackGround(2);
    3:writeln('�㤥� �����:��(1),��� ��. �� randomize(2),���(3):');
    readln(k);
    textcolor(13);
    TextBackGround(6);
    if (k<1) or (k>3) then begin writeln('������ ᭮��:');goto 3; end;
    clrscr;
    if k=1 then begin assign(f,'c:\bp\bin\t\mu3.txt');
                      reset(f);
                      while not eof(f) do
                       begin
                        readln(f,cr);
                        sound(cr);
                        delay(20000);
                        nosound;
                       end;
                      close(f);
                      goto 4;
                end
    else if k=2 then begin writeln('��� ����砭�� ������ {ENTER}');
                           repeat cr:=random(249);sound(cr);delay(10000);nosound; until keypressed;
                           goto 4;
                           clrscr;
                     end;
    repeat
         readkey;
         i:=i+1;
         case readkey of
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
              1:sound(ch[i]);
              delay(65000);
              nosound;
    until (readkey=#13) or (i>1023);
    2:writeln('�㤥� �����뢠��:��(1),���(2):');
    readln(K);
    if (k<1) or (k>2) then begin writeln('������ ᭮��:');goto 2; end;
    clrscr;
    if k=1 then begin assign(f,'c:\bp\bin\t\mu3.txt');
                      rewrite(f);
                      for l:=1 to i do
                        writeln(f,ch[l]);
                      close(f);
                end;
    4:writeln('������ ����祭!');
    readkey;
end.