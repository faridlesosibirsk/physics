unit ReportUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Report = class(Builder)
    procedure Print(panel: TPanel); override;
  end;

implementation

{ Report }

procedure Report.Print(panel: TPanel);
begin
  TPanel.Create(panel).Parent:=panel;
end;

end.
