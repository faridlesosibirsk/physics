unit Lab1Unit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  MechanicsUnit,
  LaboratoryUnit;

type

  Lab1 = class(Mechanics)
    function Print: TPanel; override;
  end;

implementation

{ TNamberPage }

function Lab1.Print: TPanel;
begin
  result := TPanel.Create(nil);
end;

end.
