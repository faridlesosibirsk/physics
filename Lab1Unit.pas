unit Lab1Unit;

interface

uses
  StateUnit,
  System.Generics.Collections {TDictionary};

type
  Lab1 = class(TInterfacedObject, State)
  private
    lab: TDictionary<String, String>;
  published
    constructor create;
  public
    function getLab: TDictionary<String, String>;
  end;

implementation

{ Lab1 }

constructor Lab1.create;
begin
  lab:= TDictionary<String, String>.create;
  lab.Add('title','Лабораторная работа №1');
end;

function Lab1.getLab: TDictionary<String, String>;
begin
  result := lab;
end;

end.
