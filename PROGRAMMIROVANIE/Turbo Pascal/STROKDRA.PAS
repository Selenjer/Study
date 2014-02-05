program DRAweStrok_1;
uses Crt;
var a:string;
    i:byte;
const
    b:string[1]=' ';
begin
    ClrScr;
    write('Введите строку:');
    read(a);
    for i:=1 to 150 do
     begin
         clrscr;
         a:=b+a;
         write(a);
         delay(5000);
     end;
end.
