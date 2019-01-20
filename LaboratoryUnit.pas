unit LaboratoryUnit;

interface

uses
  Lab1Unit,
  Lab2Unit,
  StrategyUnit;

type
  Laboratory = class
  private
    /// <link>aggregation</link>
    Strategy1: Strategy;
    procedure setState(Strategy1: Strategy);
  public
    function getCaption: String;
    procedure setLab1;
    procedure setLab2;
  published
    constructor create;
  end;

implementation

{ Laboratory }

constructor Laboratory.create;
begin
  Strategy1 := Lab1.create;
end;

function Laboratory.getCaption: String;
begin
  result := Strategy1.getCaption;
end;

procedure Laboratory.setLab1;
begin
  setState(Lab1.create);
end;

procedure Laboratory.setLab2;
begin
  setState(Lab2.create);
end;

procedure Laboratory.setState(Strategy1: Strategy);
begin
  self.Strategy1 := Strategy1;
end;

end.
