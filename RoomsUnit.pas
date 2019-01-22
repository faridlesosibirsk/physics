unit RoomsUnit;

interface

uses
  Vcl.Controls {TWinControl} ,
  BuilderUnit {Builder};

type
  Rooms = interface
    procedure Content(WinControl: TWinControl);
    procedure Lab1(WinControl: TWinControl);
  end;

implementation

end.
