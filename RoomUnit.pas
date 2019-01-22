unit RoomUnit;

interface

uses
  Vcl.Controls {TWinControl} ,
  BuilderUnit {Builder};

type
  room = interface
    procedure Content(WinControl: TWinControl);
    procedure Lab1(WinControl: TWinControl);
  end;

implementation

end.
