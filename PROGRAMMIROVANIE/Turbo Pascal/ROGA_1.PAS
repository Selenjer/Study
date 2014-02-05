program roga;
uses crt,graph;
var a,b,l,k,c,r:integer;
function vetka(x1,y1,l1,k1,r1:integer):integer;
var x2,y2:integer;
begin
     l1:=l1-k1;
     x2:=x1;
     y2:=y1;
     x1:=round(x1+l1*cos(pi/r1));
     y1:=round(y1-abs(l1)*sin(pi/r1));
     line(x2,y2,x1,y1);
     if not(abs(l1)>abs(k1)) then vetka:=1
     else vetka:=1+vetka(x1,y1,l1,k1,r1)+vetka(x1,y1,-l1,-k1,r1);
end;
begin
    Clrscr;
    write('l,k,r=');
    readln(l,k,r);
    initGraph(a,b,'c:\pascal\bgi');
    line(300,400,300,400-l);
    c:=vetka(300,400-l,l,k,r)+vetka(300,400-l,-l,-k,r);
    readkey;
    closegraph;
end.

