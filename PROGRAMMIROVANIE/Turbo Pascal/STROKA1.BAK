PROGRAM stroka1;
Uses crt;
var a,st1,st2:string;
    k,c,l,i,b:byte;
begin
    Clrscr;
    Writeln('Введите строку');
    readln(a);
    k:=length(a);
    for i:=1 to k do
     if a[i]=' '
      then b:=i
     else begin b:=0;break;end;
    if b>0
     then st1:=Copy(a,b,k-b)
    else st1:=a;
    c:=0;
    k:=length(st1);
    b:=0;
    for i:=1 to k do
     begin
         if st1[i]=' '
          then b:=0
         else b:=b+1;
         if b>c
          then c:=b;
     end;
    l:=0;
    For i:=1 to k do
     if st1[i]=' '
      then
       begin
       if c=l then begin st2:=copy(st1,1,l);break;end
       else l:=0;
       end
     else begin l:=l+1;st1[l]:=st1[i];end;
    write(st2,' -самое большое слово с числом букв равным= ',c);
end.