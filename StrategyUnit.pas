unit StrategyUnit;

interface

uses
  System.Generics.Collections {TDictionary};

type
  Strategy = interface
    function db: TDictionary<String, String>;
    //procedure free;
  end;

implementation

end.
