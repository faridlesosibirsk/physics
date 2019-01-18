unit PanelBuilderUnit;

interface

uses
  Graphics {TColor},
  BuilderUnit {Builder},
  Vcl.ExtCtrls {TPanel},
  Vcl.Controls {TAlign},
  System.Classes {TAlignment};

type
  PanelBuilder = class(TInterfacedObject, Builder)
  private
    /// <link>aggregation</link>
    panel1: TPanel;
  public
    function getPanel: TPanel;
    procedure reset;
    procedure Left(Left: Integer);
    procedure Top(Top: Integer);
    procedure Caption(Caption: String);
    procedure Align(Align: TAlign);
    procedure Alignment(Alignment: TAlignment);
    procedure BevelEdges(BevelEdges: TBevelEdges);
    procedure BevelKind(BevelKind: TBevelKind);
    procedure BevelOuter(BevelOuter: TBevelCut);
    procedure BorderWidth(BorderWidth: Integer);
    procedure Color(Color: TColor);
    procedure Height(Height: Integer);
    procedure FontStyle(FontStyle: TFontStyles);
    procedure onClick(Event: TNotifyEvent);
  end;

implementation

{ Panel }

function PanelBuilder.getPanel: TPanel;
begin
  result := panel1;
end;

procedure PanelBuilder.Height(Height: Integer);
begin
  panel1.Height:=Height;
end;

procedure PanelBuilder.reset;
begin
  panel1 := TPanel.Create(nil);
end;

procedure PanelBuilder.Caption(Caption: String);
begin
  panel1.Caption:= Caption;
end;

procedure PanelBuilder.Color(Color: TColor);
begin
  panel1.Color:= Color;
end;

procedure PanelBuilder.FontStyle(FontStyle: TFontStyles);
begin
  panel1.Font.Style:=FontStyle;
end;

procedure PanelBuilder.Align(Align: TAlign);
begin
  panel1.Align := Align;
end;

procedure PanelBuilder.Alignment(Alignment: TAlignment);
begin
  panel1.Alignment := Alignment;
end;

procedure PanelBuilder.BevelEdges(BevelEdges: TBevelEdges);
begin
  panel1.BevelEdges := BevelEdges;
end;

procedure PanelBuilder.BevelKind(BevelKind: TBevelKind);
begin
  panel1.BevelKind := BevelKind;
end;

procedure PanelBuilder.BevelOuter(BevelOuter: TBevelCut);
begin
  panel1.BevelOuter := BevelOuter;
end;

procedure PanelBuilder.BorderWidth(BorderWidth: Integer);
begin
  panel1.BorderWidth:=BorderWidth;
end;

procedure PanelBuilder.Left(Left: Integer);
begin
  panel1.Left := Left;
end;

procedure PanelBuilder.onClick(Event: TNotifyEvent);
begin
  //
end;

procedure PanelBuilder.Top(Top: Integer);
begin
  panel1.Top := Top;
end;

end.
