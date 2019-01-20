unit Lab1Unit;

interface

uses
  StrategyUnit;

type
  Lab1 = class(TInterfacedObject, Strategy)
  private
  public
    function getCaption: String;
  end;

implementation

{ Lab1 }

function Lab1.getCaption: String;
begin
  result := 'Lab1';
end;

end.
