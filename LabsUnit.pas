unit LabsUnit;

interface

uses
  System.Generics.Collections {TDictionary};

type
  Labs = interface
    function getTitle: String;
    function getText: TDictionary<String, String>;
  end;

implementation

end.
