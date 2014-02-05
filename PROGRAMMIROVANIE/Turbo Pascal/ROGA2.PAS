program roga;
uses crt,graph;
var a,b,l,k,c:integer;
function vetka(x1,y1,l1,k1:integer):integer;
var x2,y2:integer;
begin
     l1:=l1-k1;
     x2:=x1;
     y2:=y1;
     x1:=round(x1+l1*cos(pi/4));
     y1:=round(y1-abs(l1)*sin(pi/4));
     {write(x1,' ; ');}
     line(x2,y2,x1,y1);
     if not(abs(l1)>abs(k1)) then vetka:=1
     else vetka:=1+vetka(x1,y1,l1,k1)+vetka(x1,y1,-l1,-k1);
end;
begin
    Clrscr;
    write('l,k=');
    readln(l,k);
    initGraph(a,b,'c:\bp\pascal\bgi');
    line(300,400,300,400-l);
    c:=vetka(300,400-l,l,k)+vetka(300,400-l,-l,-k);
    readkey;
    closegraph;
end.

