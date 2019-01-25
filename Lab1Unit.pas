unit Lab1Unit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  LabsUnit;

type
  Lab1 = class(TInterfacedObject, Labs)
  const
    title = 'Lab1';
  private
    function getTitle: String;
    function getText: TDictionary<String, String>;
  end;

implementation

{ Lab1 }

function Lab1.getText: TDictionary<String, String>;
begin
  result := TDictionary<String, String>.create;
  result.Add('ттхфхэшх', 'єіттттттттттттттттттттттттттттттттттттттттттттт');
end;

function Lab1.getTitle: String;
begin
  result := title;
end;

end.
