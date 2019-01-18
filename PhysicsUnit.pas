unit PhysicsUnit;

interface

uses
  Vcl.ExtCtrls {TPanel};

type
  Physics = interface
    function makeContent: TPanel;
  end;

implementation

end.
