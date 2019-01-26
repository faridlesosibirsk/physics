unit Lab2Unit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  MechanicsUnit,
  LaboratoryUnit;

type
  Lab2 = class(Mechanics)
    function Print: TPanel; override;
  end;

implementation

{ Lab2 }

function Lab2.Print: TPanel;
begin
  result := TPanel.Create(nil);
end;

end.
