unit Lab3Unit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  ConnectionUnit,
  LabsUnit;

type
  Lab3 = class(TInterfacedObject, Labs)
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

{ Lab3 }

function Lab3.caption: String;
begin
  result:='Лабораторная работа №3';
end;

constructor Lab3.create;
begin

end;

function Lab3.theory: TList<String>;
var
  theory1: TList<String>;
begin
  theory1:= TList<String>.create;
end;

end.
