unit ControllersUnit;

interface

uses
  Vcl.ExtCtrls {TPanel},
  Vcl.Controls {TWinControl} ,
  BuilderUnit {Builder};

type
  Controllers = interface
    function open: TPanel;
  end;

implementation

end.
