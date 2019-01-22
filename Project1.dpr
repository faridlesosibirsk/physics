program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  PhisicsUnit in 'PhisicsUnit.pas',
  StudentUnit in 'StudentUnit.pas',
  BuilderUnit in 'BuilderUnit.pas',
  Lab1BuilderUnit in 'Lab1BuilderUnit.pas',
  Lab1Unit in 'Lab1Unit.pas',
  ContentUnit in 'ContentUnit.pas',
  PhisicaUnit in 'PhisicaUnit.pas',
  RoomUnit in 'RoomUnit.pas',
  ContentBuilderUnit in 'ContentBuilderUnit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
