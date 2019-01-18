unit ContentUnit;

interface

uses
  StateUnit,
  System.Generics.Collections {TDictionary};

type
  Content = class(TInterfacedObject, State)
  private
    Content1: TDictionary<String, String>;
  published
    constructor create;
  public
    function getLab: TDictionary<String, String>;
  end;

implementation

{ Content }

constructor Content.create;
begin
  Content1:= TDictionary<String, String>.Create;
  Content1.Add('title','Открытая физика');
end;

function Content.getLab: TDictionary<String, String>;
begin
  result := Content1;
end;

end.
