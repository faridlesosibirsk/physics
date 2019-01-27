program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  LaboratoryUnit in 'LaboratoryUnit.pas',
  MechanicsUnit in 'MechanicsUnit.pas',
  Lab1Unit in 'Lab1Unit.pas',
  BuilderUnit in 'BuilderUnit.pas',
  TheoryUnit in 'TheoryUnit.pas',
  TestUnit in 'TestUnit.pas',
  MethodologyUnit in 'MethodologyUnit.pas',
  ReportUnit in 'ReportUnit.pas',
  Lab2Unit in 'Lab2Unit.pas',
  FormCreateUnit in 'FormCreateUnit.pas',
  PanelCreateUnit in 'PanelCreateUnit.pas';

{$R *.res}

var
  Form1: TForm1;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

end.
