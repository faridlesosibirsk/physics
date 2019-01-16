unit OneUnit;

interface

uses
  StateUnit,
  Controls {TWinControl},
  System.Generics.Collections {TList},
  System.Classes, {TComponent}
  Vcl.ExtCtrls, {TPanel}
  Vcl.StdCtrls {TButton};

type
  One = class(TInterfacedObject, State)
  published
    constructor create;
  private
    buttons: TObjectList<TWinControl>;
  public
    function Render: TObjectList<TWinControl>;
    procedure destroy;
  end;

implementation

{ One }

constructor One.create;
begin
  buttons:= TObjectList<TWinControl>.create;
end;

procedure One.destroy;
var
  b: TWinControl;
begin
  for b in buttons do
    b.Free;
end;

function One.Render: TObjectList<TWinControl>;
var
  p1, p2: TPanel;
begin
  buttons := TObjectList<TWinControl>.create;
  p1 := TPanel.create(nil);
  p1.left := 100;
  p1.top := 100;
  p1.caption := 'OneButton1';
  buttons.Add(p1);
  p2 := TPanel.create(nil);
  p2.left := 200;
  p2.top := 200;
  p2.caption := 'OneButton2';
  buttons.Add(p2);
  result := buttons;
end;

end.
