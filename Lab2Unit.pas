unit Lab2Unit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  LabsUnit,
  ConnectionUnit;

type
  Lab2 = class(TInterfacedObject, Labs)
  private
    /// <link>aggregation</link>
    Connection1: Connection;
  public
    function caption: String;
    function theory: TList<String>;
  published
    constructor create;
  end;

implementation

{ Lab2 }

function Lab2.caption: String;
begin
  result:='Лабораторная работа №2';
end;

constructor Lab2.create;
begin

end;

function Lab2.theory: TList<String>;
var
  theory1: TList<String>;
begin
  theory1:= TList<String>.create;
end;

end.
