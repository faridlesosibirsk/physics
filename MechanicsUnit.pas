unit MechanicsUnit;

interface

uses
  ConnectionUnit,
  Lab1Unit;

type
  Mechanics = class(TInterfacedObject)
  private
    /// <link>aggregation</link>
    Lab1_: Lab1;
    /// <link>aggregation</link>
    Connection1: Connection;
  end;

implementation

end.
