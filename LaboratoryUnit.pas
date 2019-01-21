unit LaboratoryUnit;

interface

uses
  laboratoriesUnit {laboratories} ,
  System.Generics.Collections {TDictionary} ,
  Lab1Unit {Lab1} ,
  Lab2Unit {Lab2} ,
  ContentUnit {Content} ,
  StrategyUnit {Strategy};

type

  Laboratory = class(TInterfacedObject, laboratories)
  private
    /// <link>aggregation</link>
    Strategy1: Strategy;
  public
    function db: TDictionary<String, String>;
    procedure setLab1;
    procedure setLab2;
    procedure setContent;
    procedure setState(Strategy1: Strategy);
  published
    constructor create;
  end;

implementation

{ Laboratory }

constructor Laboratory.create;
begin
  // Strategy1 := Lab1.create;
  Strategy1 := Content.create;
end;

function Laboratory.db: TDictionary<String, String>;
begin
  result := Strategy1.db;
end;

procedure Laboratory.setContent;
begin
  setState(Content.create);
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
