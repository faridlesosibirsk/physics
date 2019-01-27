unit TestUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Test = class(Builder)
    procedure Print(panel: TPanel); override;
  end;

implementation

{ Test }

procedure Test.Print(panel: TPanel);
begin
  TPanel.Create(panel).Parent:=panel;
end;

end.
