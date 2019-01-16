unit FirstUnit;

interface

uses
  StateUnit,
  OneUnit,
  DocumentUnit,
  System.Classes {TAlignment},
  Graphics {TColor},
  Controls {TWinControl},
  Vcl.ExtCtrls {TPanel},
  Vcl.StdCtrls {TButton},
  System.Generics.Collections {TList};

type

TNotifyEvent = procedure (Sender: TObject) of object;

  First = class(TInterfacedObject, State)
  published
    constructor create;
  private
    buttons: TObjectList<TWinControl>;
    button: TButton;
  public
    function Render: TObjectList<TWinControl>;
    procedure destroy;
    function getButton: TButton;
  end;

implementation

constructor First.create;
begin
  buttons:= TObjectList<TWinControl>.create;
end;

procedure First.destroy;
var
  b: TWinControl;
begin
  for b in buttons do
    b.Free;
end;

function First.getButton: TButton;
begin
  result:=button;
end;

function First.Render: TObjectList<TWinControl>;
var
  p1, p2, p3: TPanel;
  b1, b2: TButton;
begin
  buttons := TObjectList<TWinControl>.create;
  p1 := TPanel.create(nil);
  p1.Align := alClient;
  p1.BevelOuter := bvNone;
  p1.caption := '';
  buttons.Add(p1);
  p2 := TPanel.create(nil);
  p2.Align := alTop;
  p2.Alignment:=taLeftJustify;
  p2.BevelEdges:=[beBottom];
  p2.BevelKind:=bkTile;
  p2.BevelOuter := bvNone;
  p2.BorderWidth:=20;
  p2.caption := 'Движение с постоянным ускорением First';
  p2.Color:=clWhite;
  p2.Height:=60;
  p2.ParentBackground:=false;
  p2.Font.Style:=[fsBold];
  buttons.Add(p2);
  p3 := TPanel.create(nil);
  p3.Align := alBottom;
  p3.Alignment:=taLeftJustify;
  p3.BevelEdges:=[beTop];
  p3.BevelKind:=bkTile;
  p3.BevelOuter := bvNone;
  p3.BorderWidth:=0;
  p3.caption := '';
  //p3.Color:=clWhite;
  p3.Height:=60;
  p3.ParentBackground:=false;
  //p3.Font.Style:=[fsBold];
  buttons.Add(p3);
  b1 := TButton.create(nil);
  b1.Anchors:=[akRight, akBottom];
  b1.Caption:='Next >';
  b1.left := 312;
  //b1.OnClick:=self.Click;
  b1.top := 318;
  button:= b1;
  buttons.Add(b1);
  b2 := TButton.create(nil);
  b2.Anchors:=[akLeft, akBottom];
  b2.Caption:='< Back';
  b2.Enabled:=false;
  b2.left := 232;
  b2.top := 318;
  buttons.Add(b2);
  result:=buttons;
end;

end.
