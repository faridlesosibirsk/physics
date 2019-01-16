program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DocumentUnit in 'DocumentUnit.pas',
  StateUnit in 'StateUnit.pas',
  OneUnit in 'OneUnit.pas',
  TwoUnit in 'TwoUnit.pas',
  ThreeUnit in 'ThreeUnit.pas',
  FirstUnit in 'FirstUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
