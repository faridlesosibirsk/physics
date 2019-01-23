program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  PhisicsUnit in 'PhisicsUnit.pas',
  StudentUnit in 'StudentUnit.pas',
  BuilderUnit in 'BuilderUnit.pas',
  TheoryUnit in 'TheoryUnit.pas',
  PhisicaUnit in 'PhisicaUnit.pas',
  RoomsUnit in 'RoomsUnit.pas',
  ContentUnit in 'ContentUnit.pas',
  RoomUnit in 'RoomUnit.pas',
  StudentsUnit in 'StudentsUnit.pas',
  LabsUnit in 'LabsUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
