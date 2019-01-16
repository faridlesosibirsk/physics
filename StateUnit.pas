unit StateUnit;

interface

uses
  System.Generics.Collections {TList},
  Controls {TWinControl},
  System.Classes {TComponent},
  Vcl.ExtCtrls {TPanel},
  Vcl.StdCtrls {TButton};

type
  State = interface
    function Render: TObjectList<TWinControl>;
    procedure destroy;
  end;

implementation

end.
