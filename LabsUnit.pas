unit LabsUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  ConnectionUnit;

type
  Labs = interface
    function caption: String;
    function theory: TList<String>;
  end;

implementation

end.
