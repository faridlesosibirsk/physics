unit BuilderUnit;

interface

uses
  Graphics {TColor} ,
  Vcl.Controls {TAlign} ,
  classes {TNotifyEvent};

type
  Builder = interface
    procedure reset;
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

end.
