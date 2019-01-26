unit ReportUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Report = class(Builder)
    function Print: TPanel; override;
  end;

implementation

{ Report }

function Report.Print: TPanel;
begin
  result := TPanel.Create(nil);
end;

end.
