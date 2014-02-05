{+------------------------------------------+
 |   Пример использования модуля F_GRTEXT   |
 +------------------------------------------+}
 Uses Crt,Graph,F_GRTEXT;
 const
   DX=50;
   DY=11;
   t1: STRING='Лучшая в мире система програмирования';
   t2: STRING='Турбо Паскаль';
   Grand=Pi/180;
 var
   D,R,E:integer;
   Angie:integer;
   x1,y1,x2,y2:integer;
   F:File;
   FT:Text;
   n:integer;
   P:Pointer;
   S:STRING;
   k,H:Byte;
   C:Char;
 begin
   D:=Detect;
   InitGraph(D,R,'');
   E:=GraphResult;
   if E<>grok then
     begin
       Writeln(GraphErrorMsg(E));
       halt;
     end;
   if RegisterChrFile('trip.chr')>0 then
     begin
       y1:=succ(GetMaxY) div 20;
       x1:=12*y1;
       x2:=length(t1);
       y2:=GetMaxY-2*y1;
       while x1<y2 do
         begin
           MoveTo(0,x1);
           for k:= 1 to x2 do
             begin
               angle:=Round(30*sin(grand*(k*360/x2)));
               OutString(t1[k],1,Angle,0.9,1);
             end;
           inc(x1,y1);
         end;
       MoveTo(2*GetMaxX div 7,GetMaxY-3*y1);
       for k:=1 to Length(t2) do
         OutString(t2[k],1,0,1,1);
     end;
   case D of
     CGA:H:=8;
     EGA:H:=14;
     VGA:H:=16;
   else
     H:=8;
   end;
   Str(H,S);
   S:='8x'+S+'.fnt';
   Assign(F,S);
   Reset(F,1);
   GetMem(P,FileSize(F));
   BlockRead(F,P^,FileSize(F));
   Close(F);
   SetFont(p,8,H);
   GraphWriteOn;
   TextColor(Black);
   TextBackGround(Writw);
   SetWindow((GetMaxChar-DX) div 2,2,(GetMaxChar+DX) div 2,
     (GetMaxLine+DY) div 3,DoubleBorder,'Нажмите любую клавишу',True,False,
     False);
   S:=copy(ParamStr(0),1,pos('.',ParamStr(0)))+'pas';
   Assign(FT,S);
   Reset(FT);
   for N:= 1 to DY do
     begin
       Readln(FT,S);
       Writeln(S);
     end;
   CLOse(Ft);
   while not KeyPressed do;
   While KeyPressed do
     C:=ReadKey;
   ClrScr;
   Writeln('Введите произвольный текст');
   Readln(S);
   Scrolling(-DY div 2);
   Writeln('Текст смещен на ',-DY div 2,' строк');
   Writeln('Нажмите любую клавишу...');
   C:=ReadKey;
   GraphWriteOff;
   CloseGraph;
 end.