program stroka_zzelka;
uses Crt;
var a:string;
    k,i,b,f:integer;
begin
    ClrScr;
    write('Введите строку:');
    readln(a);
    k:=length(a);
    for i:=1 to k do
     begin
         f:=ord(a[i]);
         if (f>=48)and(f<=57)
           then b:=b+1;
     end;
    if b<k then write('не является целым числом')
    else write('является целым числом');
end.

