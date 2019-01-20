unit PanelUnit;

interface

uses
  Graphics {TColor} ,
  Vcl.Controls {TAlign} ,
  classes {TNotifyEvent} ,
  Vcl.ExtCtrls {TPanel} ,
  BuilderUnit {Builder};

type
  Panel = class(TInterfacedObject, Builder)
  private
    p: TPanel;
  public
    procedure reset;
    function getResult: TPanel;
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

{ Panel }

procedure Panel.Align(Align: TAlign);
begin
  p.Align := Align;
end;

procedure Panel.BevelEdges(BevelEdges: TBevelEdges);
begin
  p.BevelEdges := BevelEdges;
end;

procedure Panel.BevelKind(BevelKind: TBevelKind);
begin
  p.BevelKind := BevelKind;
end;

procedure Panel.BevelOuter(BevelOuter: TBevelCut);
begin
  p.BevelOuter := BevelOuter;
end;

procedure Panel.Caption(Caption: String);
begin
  p.Caption := Caption;
end;

procedure Panel.Color(Color: TColor);
begin
  p.Color := Color;
end;

procedure Panel.free;
begin
  p.free;
end;

function Panel.getResult: TPanel;
begin
  result := p;
end;

procedure Panel.Height(Height: Integer);
begin
  p.Height := Height;
end;

procedure Panel.onClick(onClick1: TNotifyEvent);
begin
  p.onClick := onClick1;
end;

procedure Panel.parent(AOwner: TWinControl);
begin
  p.parent := AOwner;
end;

procedure Panel.reset;
begin
  p := TPanel.Create(nil);
end;

end.
