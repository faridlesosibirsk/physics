unit TwoUnit;

interface

uses
  StateUnit,
  Controls {TWinControl},
  System.Generics.Collections {TList} ,
  System.Classes, {TComponent}
  Vcl.ExtCtrls, {TPanel}
  Vcl.StdCtrls {TButton};

type
  Two = class(TInterfacedObject, State)
  private
    buttons: TObjectList<TWinControl>;
  public
    function Render: TObjectList<TWinControl>;
    procedure destroy;
  end;

implementation

{ Two }

procedure Two.destroy;
var
  b: TComponent;
begin
  for b in buttons do
    b.Free;
end;

function Two.Render: TObjectList<TWinControl>;
var
  b1, b2: TButton;
begin
  buttons := TObjectList<TWinControl>.create;
  b1 := TButton.create(nil);
  b1.left := 150;
  b1.top := 150;
  b1.caption := 'TwoButton1';
  buttons.Add(b1);
  b2 := TButton.create(nil);
  b2.left := 250;
  b2.top := 250;
  b2.caption := 'TwoButton2';
  buttons.Add(b2);
  result := buttons;
end;

end.
