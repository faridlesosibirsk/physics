unit ConnectionUnit;

interface

uses
  System.Generics.Collections {TDictionary};

type
  Connection = interface
    function getColTable(cal, table: string): TList<String>;
    function theoryLab1: TList<String>;
    function testLab1: TList<String>;
    function getLab(caption: string): String;
  end;

implementation

end.
