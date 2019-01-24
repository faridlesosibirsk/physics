program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  StudentUnit in 'StudentUnit.pas',
  BuilderUnit in 'BuilderUnit.pas',
  TheoryUnit in 'TheoryUnit.pas',
  PhisicsUnit in 'PhisicsUnit.pas',
  MainUnit in 'MainUnit.pas',
  ContentUnit in 'ContentUnit.pas',
  Lab1Unit in 'Lab1Unit.pas',
  LabsUnit in 'LabsUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
