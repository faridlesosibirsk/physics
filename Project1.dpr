program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1, Button1};

{$R *.res}

var
  Form1: TForm1;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
