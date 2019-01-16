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
  b1, b2: TButton;
begin
  buttons:= TObjectList<TWinControl>.create;
  b1:= TButton.Create(nil);
  b1.left := 100;
  b1.top := 100;
  b1.caption := 'OneButton1';
  buttons.Add(b1);
  b2:= TButton.Create(nil);
  b2.left := 200;
  b2.top := 200;
  b2.caption := 'OneButton2';
  buttons.Add(b2);
  result := buttons;
end;

end.
