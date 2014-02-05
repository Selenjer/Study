                 {‚ˆ‡“€‹ˆ‡€–ˆŸ …’€†€…Œ›• ‘ˆŒ‚‹‚}
program N555;
uses crt;
label 1;
var a,b,c:string[80];
    i,k:byte;
begin
    ClrScr;
    1:write('‚¢¥¤¨â¥ áâà®ªã:');
    readln(a);
    if length(a)>70
     then
      begin
        writeln('¥ ¢¢®¤¨â¥ ¡®«ìè¥ 70.');
        goto 1;
      end;
    b:=chr(249);
    for i:=1 to 70 do
     begin
       if a[i]=' ' then
        begin delete(a,i,1);insert(b,a,i);end;
     end;
    c:=chr(254);
    a:=Concat(a,c);
    write(a);
end.