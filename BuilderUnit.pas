unit BuilderUnit;

interface

uses
  Graphics {TColor} ,
  System.Classes {TAlignment} ,
  Vcl.Controls {TAlign};

type
  Builder = interface
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

end.
