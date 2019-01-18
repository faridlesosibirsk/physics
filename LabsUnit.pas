unit LabsUnit;

interface

uses
  DocumentUnit,
  StatesUnit,
  Lab1Unit,
  System.Generics.Collections {TDictionary};

type
  Labs = class(TInterfacedObject, States)
  private
    /// <link>aggregation</link>
    Document1: Document;
  public
    function getDoc: TDictionary<String, String>;
    procedure getLab1;
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

procedure Labs.getLab1;
begin
  Document1.ChangeLab(Lab1.create);
end;

end.
