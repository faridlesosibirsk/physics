unit Lab2Unit;

interface

uses
  StrategyUnit;

type
  Lab2 = class(TInterfacedObject, Strategy)
  private
  public
    function getCaption: String;
  end;

implementation

{ Lab2 }

function Lab2.getCaption: String;
begin
  result := 'Lab2';
end;

end.
