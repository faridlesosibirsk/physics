program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ControllersUnit in 'ControllersUnit.pas',
  PhisicsControllerUnit in 'PhisicsControllerUnit.pas',
  LaboratoriesUnit in 'LaboratoriesUnit.pas',
  Laboratory1Unit in 'Laboratory1Unit.pas',
  TheoryLab1Unit in 'TheoryLab1Unit.pas',
  TestLab1Unit in 'TestLab1Unit.pas',
  MethodLab1Unit in 'MethodLab1Unit.pas',
  ReportLab1Unit in 'ReportLab1Unit.pas',
  ConnectionUnit in 'ConnectionUnit.pas',
  AccessConnectionUnit in 'AccessConnectionUnit.pas',
  MechanicsUnit in 'MechanicsUnit.pas',
  Laboratory2Unit in 'Laboratory2Unit.pas',
  MethodLab2Unit in 'MethodLab2Unit.pas',
  ReportLab2Unit in 'ReportLab2Unit.pas',
  TestLab2Unit in 'TestLab2Unit.pas',
  TheoryLab2Unit in 'TheoryLab2Unit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
