program date;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
giorno1,mese1,anno1,giorno2,mese2,anno2:integer;
data:boolean;
begin
data:=True;
writeln('Inserisci data1(gg mm aa): ');
readln(giorno1,mese1,anno1);

case mese1 of
1,3,5,7,8,10,12:
begin
  if ((giorno1>0)and(giorno1<32)and(anno1>0)and(anno1<100))
  then
    writeln ('Data corretta,ora inserisci la seconda')
  else
  begin
    writeln('Data non corretta,reinserisci data1');
    data:=False;
  end;
end;

4,6,9,11:
begin
  if ((giorno1>0)and(giorno1<31)and(anno1>0)and(anno1<100))
  then
    writeln ('Data corretta,ora inserisci la seconda')
  else
  begin
    writeln('Data non corretta,reinserisci la data1');
    data:=False;
  end;
end;

2:
begin
  if ((giorno1>0)and(giorno1<30)and(anno1>0)and(anno1<100))
  then
    writeln ('Data corretta,ora inserisci la seconda')
  else
  begin
    writeln('Data non corretta,reinserisci la data1');
    data:=False;
  end;
end;
end;

if data=True then
begin
writeln('Inserisci data2(gg mm aa): ');
readln(giorno2,mese2,anno2);

case mese2 of
1,3,5,7,8,10,12:
begin
  if ((giorno2>0)and(giorno2<32)and(anno2>0)and(anno2<100))
  then
    writeln ('Le date sono corrette')
  else
  begin
    writeln('Data non corretta,reinserisci data2');
    data:=False;
  end;
end;

4,6,9,11:
begin
  if ((giorno2>0)and(giorno2<31)and(anno2>0)and(anno2<100))
  then
    writeln ('Le date sono corrette')
  else
  begin
    writeln('Data non corretta,reinserisci data2');
    data:=False;
  end;
end;

2:
begin
  if ((giorno2>0)and(giorno2<30)and(anno2>0)and(anno2<100))
  then
    writeln ('Le date sono corrette')
  else
  begin
    writeln('Data non corretta,reinserisci data2');
    data:=False;
  end;
end;
else
begin
writeln('Data non corretta,reinserisci data2');
data:=False;
end;
end;
end;

if data=True then
begin
writeln('Premi INVIO per confrontare le due date');
readln;

if anno1>anno2 then
writeln('La prima data e'' piu'' recente della seconda')
else
if anno1<anno2 then
writeln('La seconda data e'' piu'' recente della prima;');

if anno1=anno2 then
begin
if mese1>mese2 then
writeln('La prima data e'' piu'' recente della seconda')
else
if mese1<mese2 then
writeln('La seconda data e'' piu'' recente della prima;')
end;

if mese1=mese2 then
begin
if giorno1>giorno2 then
writeln('La prima data e'' piu'' recente della seconda!!')
else
if giorno1<giorno2 then
writeln('La seconda data e'' piu'' recente della prima!!')
end;

if (anno1=anno2)and(mese1=mese2)and(giorno1=giorno2)then
writeln('Le due date sono uguali!!');
end;
readln;

end.
