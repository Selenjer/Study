program Stroka_Dvoichnaya_sistema_schislenija;
uses Crt;
var a:string;
    i,k,t,r:integer;
begin
    ClrScr;
    write('������ ��ப�:');
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
     then write('��ப� ���� �᫮� ����筮� ��⥬� ��᫥���.')
    else write('��ப� �� ���� �᫮� ����筮� ��⥬� ��᫥���.');
end.
