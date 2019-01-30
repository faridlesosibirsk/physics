program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ConnectionUnit in 'ConnectionUnit.pas',
  PhisicsUnit in 'PhisicsUnit.pas',
  LabsUnit in 'LabsUnit.pas',
  ControllsUnit in 'ControllsUnit.pas',
  TheoryUnit in 'TheoryUnit.pas',
  ContentUnit in 'ContentUnit.pas',
  TestUnit in 'TestUnit.pas',
  MethodUnit in 'MethodUnit.pas',
  ReportUnit in 'ReportUnit.pas',
  Lab3Unit in 'Lab3Unit.pas',
  Lab1Unit in 'Lab1Unit.pas',
  Lab2Unit in 'Lab2Unit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
