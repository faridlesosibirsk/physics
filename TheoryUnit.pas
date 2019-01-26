unit TheoryUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Theory = class(Builder)
    function Print: TPanel; override;
  end;

implementation

{ Theory }

function Theory.Print: TPanel;
begin
  result := TPanel.Create(nil);
end;

end.
