unit laboratoriesUnit;

interface

uses
  System.Generics.Collections {TDictionary},
  StrategyUnit {Strategy} ;

type
  laboratories = interface
    procedure setState(Strategy1: Strategy);
    function db: TDictionary<System.string, System.string>;
    procedure setLab1;
    procedure setLab2;
    procedure setContent;
  end;

implementation

end.
