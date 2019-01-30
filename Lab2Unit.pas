unit Lab2Unit;

interface

uses
  ConnectionUnit,
  LabsUnit;

type
  Lab2 = class(TInterfacedObject, Labs)
  private
    /// <link>aggregation</link>
    Connection1: Connection;
  public
    procedure destroy; virtual;
  published
    constructor create; virtual;
  end;

implementation

{ Lab2 }

constructor Lab2.create;
begin

end;

procedure Lab2.destroy;
begin

end;

end.
