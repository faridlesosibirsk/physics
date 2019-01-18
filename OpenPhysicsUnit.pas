unit OpenPhysicsUnit;

interface

uses
  ContentUnit {Content} ,
  StateUnit {State} ,
  System.Generics.Collections {TDictionary};

type
  OpenPhysics = class
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

procedure OpenPhysics.ChangeLab(state: state);
begin
  state := state;
end;

constructor OpenPhysics.create;
begin
  state := Content.create;
end;

function OpenPhysics.getLab: TDictionary<String, String>;
begin
  result := state.getLab;

end;

end.
