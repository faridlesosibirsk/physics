unit ScrollBoxUnit;

interface

uses
  Graphics {TColor} ,
  Vcl.Controls {TAlign} ,
  classes {TNotifyEvent} ,
  Vcl.ExtCtrls {TPanel} ,
  BuilderUnit {Builder} ,
  Vcl.Forms {ScrollBox};

type
  ScrollBox = class(TInterfacedObject, Builder)
  private
    sb: TScrollBox;
  public
    procedure reset;
    function getResult: TScrollBox;
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
    procedure Width(Width: Integer);
    procedure Left(Left: Integer);
    procedure WordWrap(WordWrap: Boolean);
  end;

implementation

{ ScrollBox }

procedure ScrollBox.Align(Align: TAlign);
begin
  sb.Align:=Align;
end;

procedure ScrollBox.BevelEdges(BevelEdges: TBevelEdges);
begin
  sb.BevelEdges:=BevelEdges;
end;

procedure ScrollBox.BevelKind(BevelKind: TBevelKind);
begin
  sb.BevelKind:=BevelKind;
end;

procedure ScrollBox.BevelOuter(BevelOuter: TBevelCut);
begin
  sb.BevelOuter:=BevelOuter;
end;

procedure ScrollBox.Caption(Caption: String);
begin
  //
end;

procedure ScrollBox.Color(Color: TColor);
begin
  sb.Color:=Color;
end;

procedure ScrollBox.free;
begin
  sb.Free;
end;

function ScrollBox.getResult: TScrollBox;
begin
  result:=sb;
end;

procedure ScrollBox.Height(Height: Integer);
begin
  sb.Height:=Height;
end;

procedure ScrollBox.Left(Left: Integer);
begin
  sb.Left:=Left;
end;

procedure ScrollBox.onClick(onClick1: TNotifyEvent);
begin
  //
end;

procedure ScrollBox.parent(AOwner: TWinControl);
begin
  sb.Parent:=AOwner;
end;

procedure ScrollBox.reset;
begin
  sb:=TScrollBox.Create(nil);
end;

procedure ScrollBox.Width(Width: Integer);
begin
  sb.Width:=Width;
end;

procedure ScrollBox.WordWrap(WordWrap: Boolean);
begin
//
end;

end.
