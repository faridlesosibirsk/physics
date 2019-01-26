unit ContentUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  MechanicsUnit,
  LaboratoryUnit;

type

  Content = class(Mechanics)
    function Print: TPanel; override;
  end;

implementation

{ TLaterPage }

function Content.Print: TPanel;
begin
  result := TPanel.Create(nil);//'Content1' +
end;

end.
