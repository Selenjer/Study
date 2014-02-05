program Simbol1;
Uses Crt;
Var i:word;p:char;
begin
    ClrScr;
    for i:= 1 to 250 do
     begin
         p:=chr(i);
         write(p,' = ',i,' ; ');
     end;
end.