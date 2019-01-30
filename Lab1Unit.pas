unit Lab1Unit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  LabsUnit,
  ConnectionUnit;

type
  Lab1 = class(TInterfacedObject, Labs)
    // const
    // caption = 'Лабораторнай работа №1';
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

{ Lab }

function Lab1.caption: String;
begin
  result := 'Лабораторная работа №1';
end;

constructor Lab1.create;
begin
  Connection1 := AccessConnection.create;
end;

function Lab1.theory: TList<String>;
var
  theory1: TList<String>;
begin
  theory1 := TList<String>.create;
  theory1 := Connection1.theoryLab1;
  result := theory1;
end;

end.
