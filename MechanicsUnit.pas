unit MechanicsUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  LaboratoryUnit;

type
  Mechanics = class(Laboratory)
    function Print: TPanel; override;
  end;

implementation

{ TDecoratorPage }

function Mechanics.Print: TPanel;
begin
  result := nil;
end;

end.
