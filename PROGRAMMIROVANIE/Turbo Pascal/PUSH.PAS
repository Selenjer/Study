program Crugi;
uses Crt,graph;
label 1,2,3,4;
var i,b,a,y,v,x,y2,x2,s1,s,h,h1,x3,y3,h2,h3,j,x5,y5:integer;
    time,t,r,y1,t1,r1,r2,r3:real;
    p,l:byte;
const k=20; g=10;
begin
    clrscr;
    randomize;
    {Ввод параметров}
    1:write('Введите скорость{10 110}:');
    readln(v);
    if (v>110)or(v<10) then begin write('Введите снова:');goto 1;end;
    2:write('Введите угол{1 90}:');
    readln(i);
    if (i>90)or(i<1) then begin write('Введите снова;');goto 2;end;
    3:write('Введите высоту стены{5 465}:');
    readln(h);
    if (h>465)or(h<5) then begin write('Введите снова;');goto 3;end;
    4:write('Введите расстояние от стены до пушки{40 550}:');
    readln(s);
    if (s>550)or(s<40) then begin write('Введите снова;');goto 4;end;
    r:=pi*i/180;        {---преобразование угла в радиан---}
    time:=0;            {---сикундомер на начало---}
    t:=2*v*sin(r)/g;    {---максимальное время полета---}
    s1:=round(v*cos(r)*t);   {---какое расстояние ядро пролетит?---}
    if s1<s then begin p:=0;  {---p=0 значит недолет---}
                       writeln('недолет');
                 end
     else
      begin t1:=s/(v*cos(r));   {---время полета до стены---}
      h1:=round(v*t1*sin(r)-(g*t1*t1)/2);  {---высота полета во время t1---}
      if (h1<h)and(h1>5) then begin p:=1; {---p=1 значит попал!!!---}
                                    writeln('попал!!!'); t:=t1;
                              end
                         else if h1>h then begin
                                      p:=2;{---p=2 значит перелет---}
                                      writeln('перелет');
                                           end;
      end;
    readkey;
    a:=detect;
    b:=detect;
    initGraph(a,b,'c:\bp\pascal\bgi');
    setcolor(2);         {---цвет почвенного покрова---}
    setlinestyle(0,0,3); {---толщина почвенного покрова---}
    line(0,470,640,470); {---рельеф покрова---}
    setcolor(8);         {---цвет стены---}
    line(s+50,469,s+50,469-h); {---размер первого слоя стены---}
    line(s+56,469,s+56,469-h); {---размер второго слоя стены---}
    y2:=round(k*sin(r)); {---вертикальная координата дула---}
    x2:=round(k*cos(r)); {---горизонтальная координата дула---}
    for l:=1 to 5 do
    for j:=1 to 20 do
     begin
         setcolor(4);circle(x2+52,470-y2,j);
         setcolor(2);setlinestyle(0,0,3);line(50,470,x2+50,470-y2);
         line(52,470,x2+52,470-y2);rectangle(47,467,55,473);
         delay(1);setcolor(0);Circle(x2+50,470-y2,j);
     end;
    cleardevice;
    setcolor(2);         {---цвет почвенного покрова---}
    setlinestyle(0,0,3); {---толщина почвенного покрова---}
    line(0,470,640,470); {---рельеф покрова---}
    setcolor(8);         {---цвет стены---}
    line(s+50,469,s+50,469-h); {---размер первого слоя стены---}
    line(s+56,469,s+56,469-h); {---размер второго слоя стены---}
    while time<t do {---пока время секундомера не достигнет
                       максимально возможного времени полета---}
     begin
         time:=time+0.05; {---приращение времени секундомера---}
         y1:=v*time*sin(r)-(g*time*time)/2;{---координаты снаряда---}
         y:=round(y1*(-1));                    {---повертикали---}
         x:=round(v*time*cos(r)); {---координаты снаряда погоризонтали---}
         setlinestyle(0,0,1);
         setcolor(2);setlinestyle(0,0,3);line(50,470,x2+50,470-y2);
         line(52,470,x2+52,470-y2);rectangle(47,467,55,473);
         setcolor(7);
         Circle(x+50,y+470,4);
         delay(1);setcolor(0);Circle(x+50,y+470,4);
     end;
     if p=1 then begin
                     setcolor(12);
                     settextstyle(1,0,9);
                     outtextXY(200,50,'Good!!!');
                     delay(65000);
                     setcolor(0);
                     settextstyle(1,0,9);
                     outtextXY(200,50,'Good!!!');
                     setcolor(2);         {---цвет почвенного покрова---}
    setlinestyle(0,0,3); {---толщина почвенного покрова---}
    line(0,470,640,470); {---рельеф покрова---}
    setcolor(8);         {---цвет стены---}
    line(s+50,469,s+50,469-h); {---размер первого слоя стены---}
    line(s+56,469,s+56,469-h); {---размер второго слоя стены---}
         setcolor(2);setlinestyle(0,0,3);line(50,470,x2+50,470-y2);
         line(52,470,x2+52,470-y2);rectangle(47,467,55,473);
                     h2:=h-h1+4;
                     for j:=90 downto 0 do begin
                      r1:=pi*j/180;
                      x3:=round(h2*cos(r1));
                      y3:=round(h2*sin(r1));
                      setcolor(8);
                      line(s+50,470-h1,s+50-x3,470-h1-y3);
                      delay(1000);
                      setcolor(0);
                      line(s+50,470-h1,s+50-x3,470-h1-y3);
                                           end;
                     if h2>h1 then begin
                     while h3<h1 do begin
                      r2:=h3/h2;         {---косинус угла альфа---}
                      r3:=sqrt(1-r2*r2); {---синус угла альфа---}
                      x3:=round(h2*r3);
                      setcolor(8);
                      line(s+50,470-h1,s+50-x3,470-(h1-h3));
                      delay(700);
                      setcolor(0);
                      line(s+50,470-h1,s+50-x3,470-(h1-h3));
                      h3:=h3+1;     end;
                     setcolor(8);
                     line(s+50,470-h1,s+50-x3,470-(h1-h3));
                                   end
                     else if h2<=h1 then
                          begin
                          for j:=470-h1 to 467 do
                          begin
                           setcolor(8);
                           line(s+48,j,s+48-x3,j);
                           delay(700);
                           setcolor(0);
                           line(s+48,j,s+48-x3,j);
                          end;
                          setcolor(8);
                          line(s+48,j,s+48-x3,j);
                          end;
                 end;
     if i=90 then
               begin
                   for j:=1 to 720 do
                    begin
                    setcolor(2);setlinestyle(0,0,3);line(50,470,x2+50,470-y2);
                    line(52,470,x2+52,470-y2);rectangle(47,467,55,473);
    setcolor(2);         {---цвет почвенного покрова---}
    setlinestyle(0,0,3); {---толщина почвенного покрова---}
    line(0,470,640,470); {---рельеф покрова---}
    setcolor(8);         {---цвет стены---}
    line(s+50,469,s+50,469-h); {---размер первого слоя стены---}
    line(s+56,469,s+56,469-h); {---размер второго слоя стены---}
                        setcolor(4);
                        setlinestyle(0,0,1);
                        Circle(50,470,j);delay(400);
                        setcolor(0);
                        Circle(50,470,j);
                    end;
                   for j:=720 downto 1 do
                    begin
                        setcolor(4);
                        setlinestyle(0,0,1);
                        Circle(50,470,j);delay(400);
                        setcolor(0);
                        Circle(50,470,j);
                    end;
                   setbkcolor(15);
                   cleardevice;
                   delay(65000);
                   setbkcolor(7);
                   delay(65000);
                   setbkcolor(8);
                   delay(65000);
                   setbkcolor(0);
                   for j:=1 to 2000 do
                    begin
                        x5:=random(520)+70;
                        y5:=random(100)+100;
                        setcolor(4);
                        setlinestyle(0,0,3);
                        rectangle(x5-10,y5-10,x5+10,y5+10);
                        setfillstyle(1,15);
                        floodfill(x5,y5,4);
                        setcolor(0);
                        settextstyle(1,0,9);
                        outtextXY(70,100,'GAME OVER');
                        delay(0);
                    end;
                   outtextXY(70,100,'GAME OVER');
               end;
    readkey;
    closeGraph;
end.