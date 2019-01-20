unit ButtonUnit;

interface

uses
  Graphics {TColor} ,
  BuilderUnit {Builder} ,
  Vcl.Controls {TAlign} ,
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent};

type
  Button = class(TInterfacedObject, Builder)
  private
    b: TButton;
  public
    procedure reset;
    function getResult: TButton;
    procedure parent(AOwner: TWinControl);
    procedure onClick(onClick1: TNotifyEvent);
    procedure free;
    procedure Align(Align: TAlign);
    procedure Height(Height: Integer);
    procedure Caption(Caption: String);
    procedure BevelOuter(BevelOuter: TBevelCut);
    procedure Color(Color: TColor);
    procedure BevelKind(BevelKind: TBevelKind);
    procedure BevelEdges(BevelEdges: TBevelEdges);
  end;

implementation

{ Button }

procedure Button.Align(Align: TAlign);
begin
  b.Align := Align;
end;

procedure Button.BevelEdges(BevelEdges: TBevelEdges);
begin
  //
end;

procedure Button.BevelKind(BevelKind: TBevelKind);
begin
  //
end;

procedure Button.BevelOuter(BevelOuter: TBevelCut);
begin
  //
end;

procedure Button.Caption(Caption: String);
begin
  b.Caption := Caption;
end;

procedure Button.Color(Color: TColor);
begin
  //
end;

procedure Button.free;
begin
  b.free;
end;

function Button.getResult: TButton;
begin
  result := b;
end;

procedure Button.Height(Height: Integer);
begin
  b.Height := Height;
end;

procedure Button.onClick(onClick1: TNotifyEvent);
begin
  b.onClick := onClick1;
end;

procedure Button.parent(AOwner: TWinControl);
begin
  b.parent := AOwner;
end;

procedure Button.reset;
begin
  b := TButton.Create(nil);
end;

end.
