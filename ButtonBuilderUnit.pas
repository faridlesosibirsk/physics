unit ButtonBuilderUnit;

interface

uses
  Graphics {TColor},
  BuilderUnit {Builder},
  Vcl.StdCtrls {TButton},
  Vcl.Controls {TAlign},
  System.Classes {TAlignment};

type
  ButtonBuilder = class(TInterfacedObject, Builder)
  private
    /// <link>aggregation</link>
    button1: TButton;
  public
    function getButton: TButton;
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

{ Button }

function ButtonBuilder.getButton: TButton;
begin
  result := button1;
end;

procedure ButtonBuilder.Height(Height: Integer);
begin
  button1.Height := Height;
end;

procedure ButtonBuilder.reset;
begin
  button1 := TButton.Create(nil);
end;

procedure ButtonBuilder.Align(Align: TAlign);
begin
  button1.Align := Align;
end;

procedure ButtonBuilder.Alignment(Alignment: TAlignment);
begin
  //
end;

procedure ButtonBuilder.BevelEdges(BevelEdges: TBevelEdges);
begin
  //
end;

procedure ButtonBuilder.BevelKind(BevelKind: TBevelKind);
begin
  //
end;

procedure ButtonBuilder.BevelOuter(BevelOuter: TBevelCut);
begin
  //
end;

procedure ButtonBuilder.BorderWidth(BorderWidth: Integer);
begin
  //
end;

procedure ButtonBuilder.Caption(Caption: String);
begin
  button1.Caption := Caption;
end;

procedure ButtonBuilder.Color(Color: TColor);
begin
  //
end;

procedure ButtonBuilder.FontStyle(FontStyle: TFontStyles);
begin
  button1.Font.Style := FontStyle;
end;

procedure ButtonBuilder.Left(Left: Integer);
begin
  button1.Left := Left;
end;

procedure ButtonBuilder.onClick(Event: TNotifyEvent);
begin
  button1.OnClick:=Event;
end;

procedure ButtonBuilder.Top(Top: Integer);
begin
  button1.Top := Top;
end;

end.
