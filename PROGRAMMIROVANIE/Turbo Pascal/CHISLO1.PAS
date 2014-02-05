Program Chislo1;
uses crt;
var k1,k2,k3,k4:byte;
    s:integer;
    f:text;
begin clrscr;
      Assign(f,'proba2.txt');
      rewrite(f);
      for k1:=0 to 9 do
       for k2:=0 to 9 do
        for k3:=0 to 9 do
         for k4:=0 to 9 do
         if((k1*k2)+(k3*k4)=k1+k2+k3+k4)and((k1*k2)div 100=0)and((k3*k4)div 100=0)
          then begin
           s:=k1*1000+k2*100+k3*10+k4;
           writeln(k1,k2,k3,k4);
           writeln(f,s);
               end;
      Close(f);
end.
