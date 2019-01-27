unit MethodologyUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Methodology = class(Builder)
    procedure Print(panel: TPanel); override;
  end;

implementation

{ Methodology }

procedure Methodology.Print(panel: TPanel);
begin
  TPanel.Create(panel).Parent:=panel;
end;

end.
