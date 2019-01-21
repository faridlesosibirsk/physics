unit SplitterUnit;

interface

uses
  Graphics {TColor} ,
  Vcl.Controls {TAlign} ,
  classes {TNotifyEvent} ,
  Vcl.ExtCtrls {TPanel} ,
  BuilderUnit {Builder} ,
  Vcl.Forms {ScrollBox};

type
  Splitter = class(TInterfacedObject, Builder)
  private
    split: TSplitter;
  public
    procedure reset;
    function getResult: TSplitter;
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

{ Splitter }

procedure Splitter.Align(Align: TAlign);
begin
  split.Align:=Align;
end;

procedure Splitter.BevelEdges(BevelEdges: TBevelEdges);
begin
  //
end;

procedure Splitter.BevelKind(BevelKind: TBevelKind);
begin
  //
end;

procedure Splitter.BevelOuter(BevelOuter: TBevelCut);
begin
  //
end;

procedure Splitter.Caption(Caption: String);
begin
  //
end;

procedure Splitter.Color(Color: TColor);
begin
  split.Color:= Color;
end;

procedure Splitter.free;
begin
  split.Free;
end;

function Splitter.getResult: TSplitter;
begin
  result:=split;
end;

procedure Splitter.Height(Height: Integer);
begin
  split.Height:= Height;
end;

procedure Splitter.Left(Left: Integer);
begin
  split.Left:=Left;
end;

procedure Splitter.onClick(onClick1: TNotifyEvent);
begin
  //
end;

procedure Splitter.parent(AOwner: TWinControl);
begin
  split.Parent:= AOwner;
end;

procedure Splitter.reset;
begin
  split:=TSplitter.Create(nil);
end;

procedure Splitter.Width(Width: Integer);
begin
  split.Width:=Width;
end;

procedure Splitter.WordWrap(WordWrap: Boolean);
begin
//
end;

end.
