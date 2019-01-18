unit StateUnit;

interface

uses
  System.Generics.Collections {TDictionary};

type
  State = interface
    function getLab: TDictionary<String, String>;
  end;

implementation

end.
