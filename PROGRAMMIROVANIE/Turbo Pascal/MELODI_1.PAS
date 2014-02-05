program gamma;
 uses Crt;
 const
     F:array[1..12] of real=(130.8,138.6,146.8,155.6,164.8,
     174.6,185.0,196.0,207.7,220.0,233.1,246.9);
     Temp=4000;
 Var K,N:integer;
 begin
   for K:=0 to 3 do
    for N:=1 to 12 do
     begin Sound(Round(F[N]*(1 shl k)));
                 Delay(Temp);
                 NoSound;
     end;
   for K:=3 downto 0 do
    for N:=12 downto 1 do
     begin Sound(Round(F[N]*(1 shl k)));
                 Delay(Temp);
                 NoSound;
     end;
 end.