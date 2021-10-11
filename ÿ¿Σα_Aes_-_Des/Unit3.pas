unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit6, Unit7, Unit5, Unit4;

procedure TForm1.Button1Click(Sender: TObject);
begin
Form13.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Form14.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form11.Show;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form12.Show;
end;

end.
