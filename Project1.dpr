program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  DirectorUnit in 'DirectorUnit.pas',
  BuilderUnit in 'BuilderUnit.pas',
  ButtonBuilderUnit in 'ButtonBuilderUnit.pas',
  PanelBuilderUnit in 'PanelBuilderUnit.pas',
  DocumentUnit in 'DocumentUnit.pas',
  StateUnit in 'StateUnit.pas',
  Lab1Unit in 'Lab1Unit.pas',
  ContentUnit in 'ContentUnit.pas',
  PhysicsUnit in 'PhysicsUnit.pas',
  OpenUnit in 'OpenUnit.pas';

{$R *.res}

var
  Form1: TForm1;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
