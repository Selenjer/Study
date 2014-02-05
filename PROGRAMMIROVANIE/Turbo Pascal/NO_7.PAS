program ANSI_C_I_BORLAND_C;
uses Crt;
label 1;
Var a:string;
    k,i:byte;
begin
    ClrScr;
    1:write('Введите строку:');
    readln(a);
    k:=Length(a);
    if k>70 then begin Writeln('Не вводите больше 70:'); goto 1; end;
    for i:= 1 to 80 do
     begin
       if a[i]='/'
        then begin
               delete(a,i,1);
               insert('\\',a,i);
             end;
     end;
    write(a);
end.