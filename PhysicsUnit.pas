unit PhysicsUnit;

interface

uses
  Vcl.ExtCtrls {TPanel};

type
  Physics = interface
    function makeContent: TPanel;
    function makeLab11: TPanel;
  end;

implementation

end.
