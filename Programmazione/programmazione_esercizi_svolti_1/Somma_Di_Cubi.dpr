program Somma_Di_Cubi;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
numero,i,j,k,x,y,z:integer;
begin
writeln('Premi INVIO per trovare i numeri');
readln;
for i:=1 to 9 do
begin
x:=i*100;
for j:=0 to 9 do
begin
y:=j*10;
for k:=0 to 9 do
begin
z:=k*1;
numero:=x+y+z;
if numero=(i*i*i)+(j*j*j)+(k*k*k) then
writeln(numero);
end;
end;
end;
writeln('Questi sono i numeri....!!!!');
readln;
end.
