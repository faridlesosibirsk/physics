program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DirectorUnit in 'DirectorUnit.pas',
  BuilderUnit in 'BuilderUnit.pas',
  ButtonBuilderUnit in 'ButtonBuilderUnit.pas',
  PanelBuilderUnit in 'PanelBuilderUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm1, Form1);
  pplication.Run;
end.
