program Stat111;
Uses Crt;
Var a:string;
    d,p,i,k,f:word;
begin
    ClrScr;
    write('������ ��ப�:');
    readln(a);
    k:=length(a);
    d:=0;p:=0;
    for i:= 1 to k do
     begin
         f:=ord(a[i]);
         if ((f>160)and(f<175))or((f>224)and(f<239))or((f>97)and(f<122))
          then
             d:=d+1
         else if ((f>65)and(f<90))or((f>128)and(f<159))
               then
                  p:=p+1;
     end;
    d:=round((d/k)*100);
    p:=round((p/k)*100);
    writeln(d,'-�⭮襭�� �ய���� � ��ப� ; ',p,'-�⭮襭�� ������ � ��ப�');
    write('                            �  ��業��.');
end.