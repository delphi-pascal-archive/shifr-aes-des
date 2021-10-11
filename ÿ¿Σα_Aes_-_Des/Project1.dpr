program Project1;

uses
  Forms,
  Unit3 in 'Unit3.pas' {Form1},
  Unit6 in 'Unit6.pas' {Form13},
  Unit7 in 'Unit7.pas' {Form14},
  Unit5 in 'Unit5.pas' {Form12},
  Unit4 in 'Unit4.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
