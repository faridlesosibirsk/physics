program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ControllersUnit in 'ControllersUnit.pas',
  OpenUnit in 'OpenUnit.pas',
  MechanicsUnit in 'MechanicsUnit.pas',
  Lab1Unit in 'Lab1Unit.pas',
  ConnectionUnit in 'ConnectionUnit.pas',
  AccessConnectionUnit in 'AccessConnectionUnit.pas',
  TheoryLab1Unit in 'TheoryLab1Unit.pas',
  TestLab1Unit in 'TestLab1Unit.pas',
  MethodLab1Unit in 'MethodLab1Unit.pas',
  ReportLab1Unit in 'ReportLab1Unit.pas',
  ContentUnit in 'ContentUnit.pas',
  MainUnit in 'MainUnit.pas',
  LaboratoryControllerUnit in 'LaboratoryControllerUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
