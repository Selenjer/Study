program stroka_preobrazovanie;
uses Crt;
var a:string[255];
    k,i,f:integer;
begin
    Clrscr;
    write('Введите строку:');
    readln(a);
    k:=length(a);
    for i:=1 to k do
     begin
         f:=ord(a[i]);
         case f of
          128..143:f:=f+32;
          144..159:f:=f+80;
         end;
         DELETE(a,i,1);
         INSERT(chr(f),a,i);
     end;
    write(a);
end.