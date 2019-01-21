unit Lab1Unit;

interface

uses
  StrategyUnit {Strategy} ,
  System.Generics.Collections {TDictionary};

type
  Lab1 = class(TInterfacedObject, Strategy)
  private
    db1: TDictionary<String, String>;
  public
    function db: TDictionary<String, String>;
  published
    constructor create;
  end;

implementation

{ Lab1 }

constructor Lab1.create;
begin
  db1:= TDictionary<String, String>.create;
end;

function Lab1.db: TDictionary<String, String>;
begin
  db1.AddOrSetValue('title', 'Лабораторная работа №1');
  result := db1;
end;

end.
