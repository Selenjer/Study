program mnogougoln_po_crugu;
uses Crt,graph;
label 1,2;
type Complex=record
      i,x,y:integer;
             end;
     Mas=array[1..30] of Complex;
var b,a,r,j,t,n,int,s,e:integer;
    rad:real;
    z:mas;
begin
    clrscr;
    1:write('Введите кол-во углов {2-30}:');
    readln(n);
    if (n<2) or (n>30) then begin writeln('Введите снова:');goto 1; end;
    a:=detect;
    b:=detect;
    initGraph(a,b,'c:\bp\pascal\bgi');
    int:=round(360/n);
    s:=0;
    r:=1;
    e:=1;
    for t:=1 to n do
     begin
         s:=s+int;
         z[t].i:=s;
     end;
    repeat
         for t:=1 to n do
          begin
              rad:=pi*z[t].i/180;
              z[t].x:=round(cos(rad)*r);
              z[t].y:=round(sin(rad)*r);
          end;
         setcolor(15);
         for t:=1 to n-1 do
           line(300+z[t].x,200+z[t].y,300+z[t+1].x,200+z[t+1].y);
         line(300+z[1].x,200+z[1].y,300+z[n].x,200+z[n].y);
         delay(500);
         setcolor(0);
         for t:=1 to n-1 do
           line(300+z[t].x,200+z[t].y,300+z[t+1].x,200+z[t+1].y);
         line(300+z[1].x,200+z[1].y,300+z[n].x,200+z[n].y);
         for t:=1 to n do
          begin
              z[t].i:=z[t].i+1;
              if z[t].i=360 then z[t].i:=0;
          end;
         if e=1 then r:=r-1
         else if e=2 then r:=r+1;
         if r>300 then e:=1
         else if r<5 then e:=2;
     until KeyPressed;
     closeGraph;
end.