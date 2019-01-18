unit DocumentUnit;

interface

uses
  ContentUnit {Content} ,
  StateUnit {State} ,
  System.Generics.Collections {TDictionary};

type
  Document = class
  private
    /// <link>aggregation</link>
    state: state;
  public
    function getLab: TDictionary<String, String>;
    procedure ChangeLab(state: state);
  published
    constructor create;
  end;

implementation

{ OpenPhysics }

procedure Document.ChangeLab(state: state);
begin
  state := state;
end;

constructor Document.create;
begin
  state := Content.create;
end;

function Document.getLab: TDictionary<String, String>;
begin
  result := state.getLab;

end;

end.
