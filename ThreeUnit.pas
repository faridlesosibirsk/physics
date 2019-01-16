unit ThreeUnit;

interface

uses
  Vcl.Forms,
  StateUnit,
  Controls {TWinControl},
  System.Generics.Collections {TList},
  System.Classes, {TComponent}
  Vcl.ExtCtrls, {TPanel}
  Vcl.StdCtrls {TButton};

type
  Three = class(TInterfacedObject, State)
  public
    function Render: TObjectList<TWinControl>;
    procedure destroy;
  end;

implementation

{ Three }

procedure Three.destroy;
begin

end;

function Three.Render: TObjectList<TWinControl>;
begin
  result := TObjectList<TWinControl>.create;
end;

end.
