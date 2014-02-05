program N333;
uses Crt;
var a:string;
    i,k:byte;
begin
    ClrScr;
    write('Введите строку:');
    readln(a);
    k:=length(a);
    for i:=1 to k do
         write(ord(a[i]),' ');
end.