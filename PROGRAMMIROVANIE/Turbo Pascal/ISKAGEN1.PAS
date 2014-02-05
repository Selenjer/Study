program Text_s_iskagenyami;
uses crt;
label 1;
var a,k,l,m,s:string;
    kol,i:byte;
begin
    randomize;
    Clrscr;
    write('a=(*');
    read(a);
    Clrscr;
    writeln('a=(*',a,'*)');
    readkey;
    kol:=length(a);
    writeln('Povtor:');
    m:=a;m[random(kol)+1]:=chr(random(40)+64);
    l:=a;l[random(kol)+1]:=chr(random(40)+64);
    k:=a;k[random(kol)+1]:=chr(random(40)+64);
    writeln(k);
    writeln(l);
    writeln(m);
    readkey;
    if (m=k)or(m=l)or(k=l)or(kol<3) then begin writeln('nevozmogno vosstanovit');goto 1;end
    else writeln('vozmogno vosstanovit');
    readkey;
    s:=k;
    for i:=1 to kol do
     if (k[i]=l[i])or(k[i]=m[i]) then s[i]:=k[i]
     else if (l[i]=k[i])or(l[i]=m[i]) then s[i]:=l[i]
     else if (m[i]=k[i])or(m[i]=l[i]) then s[i]:=m[i];
    writeln('ispravlenie...',s);
    1:readkey;
end.