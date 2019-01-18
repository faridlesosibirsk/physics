unit LabsUnit;

interface

uses
  DocumentUnit,
  StatesUnit,
  System.Generics.Collections {TDictionary};

type
  Labs = class(TInterfacedObject, States)
  private
    /// <link>aggregation</link>
    Document1: Document;
  public
    function getDoc: TDictionary<String, String>;
  published
    constructor create;
  end;

implementation

{ Labs }

constructor Labs.create;
begin
  Document1 := Document.create;
end;

function Labs.getDoc: TDictionary<String, String>;
begin
  result := Document1.getLab;
end;

end.
