unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, XPMan, jpeg, ExtCtrls;

type
  TForm12 = class(TForm)
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Memo: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;
  rot:string  ;
implementation



{$R *.dfm}

uses Unit3;



function Playfair_Crypt(s,key:string):string;
const

  MaxX = 8;
  MaxY = 4;
  URusA = '¿¡¬√ƒ≈∆«»… ÀÃÕŒœ–—“”‘’÷◊ÿŸ⁄€‹›ﬁﬂ';

var i,j,t,x1,x2,y1,y2 :integer;
    M : array[1..MaxY,1..MaxX]of Char;
    temp :string;
    

  Procedure SimbolPos(c:char;var x,y:integer);
  var i,j:integer;
  begin
  x:=0;
  y:=0;
  for i := 1 to MaxY do
    for j := 1 to MaxX do
      if c=M[i,j] then
        begin
        x:=j;
        y:=i;
        exit;
        end;
  end;

label M1;
begin

key:=AnsiUpperCase(key);
s:=AnsiUpperCase(s);

temp:='';
for i := 1 to length(s) do if pos(s[i],URusA)<>0 then temp:=temp+s[i];
s:=temp;

temp:='';
for i:=1 to length(key) do
 if pos(key[i],temp)=0 then temp:=temp+key[i];
for i:=1 to length(URusA) do
 if pos(URusA[i],temp)=0 then temp:=temp+URusA[i];
t:=0;
for i:=1 to 4 do
 for j:=1 to 8 do
 begin
 inc(t);
 M[i,j]:=temp[t];
 form12.StringGrid1.Cells[j,i]:=temp[t];
 end;



M1:
for i:=1 to length(s)div 2 do
  begin
  if s[2*i-1]=s[2*i] then
    begin
    insert('‘',s,2*i);
    goto M1;
    end;
  end;

if length(s) MOD 2 = 1 then if s[length(s)]<>'‘' then s:=s+'‘'
                                                 else s:=s+'ﬂ';
temp:='';
for i:=1 to length(s)div 2 do
  begin
  SimbolPos(s[2*i-1],x1,y1);
  SimbolPos(s[2*i],x2,y2);

  if y1 = y2 then
    begin
    inc(x1); inc(x2);
    if x1 > MaxX then x1:=x1-MaxX;
    if x2 > MaxX then x2:=x2-MaxX;
    temp:=temp+M[y1,x1]+M[y2,x2];
    end;

  if x1 = x2 then
    begin
    inc(y1); inc(y2);
    if y1 > MaxY then y1:=y1-MaxY;
    if y2 > MaxY then y2:=y2-MaxY;
    temp:=temp+M[y1,x1]+M[y2,x2];
    end;

  if (x1<>x2) and (y1<>y2) then temp:=temp+M[y1,x2]+M[y2,x1];
  end;
Playfair_Crypt:=temp;
rot:=temp;
end;





function Playfair_DeCrypt(s,key:string):string;
const

   MaxX = 8;
   MaxY = 4;

  URusA = '¿¡¬√ƒ≈∆«»… ÀÃÕŒœ–—“”‘’÷◊ÿŸ⁄€‹›ﬁﬂ';

var i,j,t,x1,x2,y1,y2 :integer;
    M : array[1..MaxY,1..MaxX]of char;
    temp :string;


  Procedure SimbolPos(c:char;var x,y:integer);
  var i,j:integer;
  begin
  x:=0;
  y:=0;
  for i := 1 to MaxY do
    for j := 1 to MaxX do
      if c=M[i,j] then
        begin
        x:=j;
        y:=i;
        exit;
        end;
  end;

label M1;
begin

key:=AnsiUpperCase(key);
s:=AnsiUpperCase(s);

temp:='';
for i := 1 to length(s) do
  begin
  if pos(s[i],URusA)<>0 then temp:=temp+s[i];
  end;
s:=temp;

temp:='';
for i:=1 to length(key) do
 if pos(key[i],temp)=0 then temp:=temp+key[i];
for i:=1 to length(URusA) do
 if pos(URusA[i],temp)=0 then temp:=temp+URusA[i];
t:=0;
for i:=1 to 4 do
 for j:=1 to 8 do
 begin
 inc(t);
 M[i,j]:=temp[t];
 end;

temp:='';
for i:=1 to length(s)div 2 do
  begin
  SimbolPos(s[2*i-1],x1,y1);
  SimbolPos(s[2*i],x2,y2);

  if y1 = y2 then
    begin
    dec(x1); dec(x2);
    if x1 <= 0 then x1:=x1+MaxX;
    if x2 <= 0 then x2:=x2+MaxX;
    temp:=temp+M[y1,x1]+M[y2,x2];
    end;

  if x1 = x2 then
    begin
    dec(y1); dec(y2);
    if y1 <= 0 then y1:=y1+MaxY;
    if y2 <= 0 then y2:=y2+MaxY;
    temp:=temp+M[y1,x1]+M[y2,x2];
    end;

  if (x1<>x2) and (y1<>y2) then temp:=temp+M[y1,x2]+M[y2,x1];
  end;
Playfair_DeCrypt:=temp;
end;


procedure TForm12.Button1Click(Sender: TObject);
begin
 Memo.Text := Playfair_Crypt(Edit1.Text,Edit2.Text)
end;

procedure TForm12.Button2Click(Sender: TObject);
var
 z:string;
begin
 z:=Playfair_DeCrypt(Edit1.Text,Edit2.Text);
 Memo.Text := z;
end;

end.
