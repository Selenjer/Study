program Stroka_Dvoichnaya_sistema_schislenija;
uses Crt;
var a:string;
    i,k,t,r:integer;
begin
    ClrScr;
    write('Введите строку:');
    readln(a);
    k:=length(a);
    r:=0;
    for i:=1 to k do
     begin
         t:=ord(a[i]);
         if (t<48)or(t>49)
          then r:=1;
     end;
    if r=0
     then write('Строка является числом двоичной системы счисления.')
    else write('Строка не является числом двоичной системы счисления.');
end.
