unit TestUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  BuilderUnit, LaboratoryUnit;

type
  Test = class(Builder)
    function Print: TPanel; override;
  end;

implementation

{ Test }

function Test.Print: TPanel;
begin
  result := TPanel.Create(nil);
end;

end.
