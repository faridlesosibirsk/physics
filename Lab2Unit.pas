unit Lab2Unit;

interface

uses
  StrategyUnit {Strategy} ,
  System.Generics.Collections {TDictionary};

type
  Lab2 = class(TInterfacedObject, Strategy)
  private
    db1: TDictionary<String, String>;
  public
    function db: TDictionary<String, String>;
  published
    constructor create;
  end;

implementation

{ Lab2 }

constructor Lab2.create;
begin
  db1 := TDictionary<String, String>.create;
end;

function Lab2.db: TDictionary<String, String>;
begin
  db1.AddOrSetValue('title', 'Лабораторная работа №2');
  result := db1;
end;

end.
