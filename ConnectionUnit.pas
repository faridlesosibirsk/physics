unit ConnectionUnit;

interface

uses
  System.Generics.Collections {TDictionary};

type
  Connection = interface
    function theoryLab1: TList<String>;
    function testLab1: TList<String>;
  end;

implementation

end.
