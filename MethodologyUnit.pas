unit MethodologyUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Methodology = class(Builder)
    function Print: TPanel; override;
  end;

implementation

{ Methodology }

function Methodology.Print: TPanel;
begin
  result := TPanel.Create(nil);
end;

end.
