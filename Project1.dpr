program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ControllersUnit in 'ControllersUnit.pas',
  PhisicsControllerUnit in 'PhisicsControllerUnit.pas',
  LabsUnit in 'LabsUnit.pas',
  Lab1Unit in 'Lab1Unit.pas',
  Lab2Unit in 'Lab2Unit.pas',
  TheoryLab1Unit in 'TheoryLab1Unit.pas',
  TheoryLab2Unit in 'TheoryLab2Unit.pas',
  TestLab1Unit in 'TestLab1Unit.pas',
  TestLab2Unit in 'TestLab2Unit.pas',
  MethodLab1Unit in 'MethodLab1Unit.pas',
  MethodLab2Unit in 'MethodLab2Unit.pas',
  ReportLab1Unit in 'ReportLab1Unit.pas',
  ReportLab2Unit in 'ReportLab2Unit.pas',
  ConnectionUnit in 'ConnectionUnit.pas',
  AccessConnectionUnit in 'AccessConnectionUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
