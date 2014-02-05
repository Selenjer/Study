program DRAweStrok_2;
uses Crt;
var a,b:string;
    i:byte;
begin
    ClrScr;
    write('Введите строку:');
    read(a);
    b:=' ';
    for i:=1 to 150 do
     begin
         clrscr;
         a:=b+a;
         write(a);
         delay(5000);
     end;
end.
