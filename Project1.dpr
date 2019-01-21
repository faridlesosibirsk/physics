program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  PhisicsUnit in 'PhisicsUnit.pas',
  DirectorUnit in 'DirectorUnit.pas',
  BuilderUnit in 'BuilderUnit.pas',
  PanelUnit in 'PanelUnit.pas',
  ButtonUnit in 'ButtonUnit.pas',
  LaboratoryUnit in 'LaboratoryUnit.pas',
  StrategyUnit in 'StrategyUnit.pas',
  Lab1Unit in 'Lab1Unit.pas',
  Lab2Unit in 'Lab2Unit.pas',
  ContentUnit in 'ContentUnit.pas',
  ScrollBoxUnit in 'ScrollBoxUnit.pas',
  SplitterUnit in 'SplitterUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
