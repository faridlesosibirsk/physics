unit StatesUnit;

interface

uses
  DocumentUnit,
  System.Generics.Collections {TDictionary};

type
  States = interface
    function getDoc: TDictionary<String, String>;
  end;

implementation

end.
