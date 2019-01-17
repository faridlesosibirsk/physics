program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DirectorUnit in 'DirectorUnit.pas',
  BuilderUnit in 'BuilderUnit.pas',
  ButtonUnit in 'ButtonUnit.pas',
  PanelUnit in 'PanelUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm1, Form1);
  pplication.Run;
end.
