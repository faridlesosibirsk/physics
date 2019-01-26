unit BuilderUnit;

interface

uses
  MechanicsUnit,
  Vcl.ExtCtrls {TPanel} ,
  LaboratoryUnit;

type
  Builder = class(Laboratory)
  public
    /// <link>aggregation</link>
    Mechanics1: Mechanics;
    function Print: TPanel; override;
  end;

implementation

{ Builder }

function Builder.Print: TPanel;
begin
  result := nil;
end;

end.
